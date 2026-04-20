# Wassaly App - Global Rules for AI Code Generation

> This file contains all rules that MUST be followed when generating code for this Flutter project.
> **ALWAYS** start with `core/imports/` when generating any code.

---

## 0. CORE LAYER (The Foundation)

The `core/` directory is the heart of the app. **ALL** generated code must use these core abstractions.

### 0.1 Core Structure

```
lib/core/
├── config/           # AppConfig, Environment variables
├── extensions/       # All extension methods (NEVER write inline extensions)
├── i18n/            # Localization config
├── imports/         # ⭐ BARREL IMPORTS - ALWAYS use these
│   ├── core_imports.dart      # Flutter SDK + Core
│   └── packages_imports.dart  # 3rd party packages
├── injection/       # get_it DI configuration
├── routing/         # GoRouter setup, AppRoutes
├── services/        # Shared services (API, Cache, etc.)
├── shared/          # Shared widgets, enums, helpers
├── theme/           # AppTheme, ColorSchemes, DesignTokens
├── utils/           # Utility functions
└── GLOBAL_RULES.md  # This file
```

### 0.2 Import Rules (STRICT)

**ALWAYS** use barrel imports. Never import packages directly.

| Import Type | Correct | Incorrect |
|-------------|---------|-----------|
| Flutter + Core | `core/imports/core_imports.dart` | `import 'package:flutter/material.dart'` |
| 3rd Party | `core/imports/packages_imports.dart` | `import 'package:equatable/equatable.dart'` |

**Every generated file must start with:**
```dart
import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/core/injection/injection.dart';
```

### 0.3 Core Extensions (ALWAYS use these)

Located in `core/extensions/context_extension.dart`:

```dart
// Theme Access
context.theme              // ThemeData
context.theme.colorScheme // ColorScheme (use: cs.primary)
context.theme.textTheme   // TextTheme (use: tt.bodyLarge)
context.colors            // ColorScheme alias
context.typography        // TextTheme alias
context.appColors         // Custom colors (success, warning, info)
context.designTokens      // Spacing, radii tokens

// MediaQuery
context.screenSize        // Size
context.width             // double
context.height            // double
context.safeArea          // EdgeInsets

// Platform
context.isIOS             // bool
context.isAndroid         // bool
context.isDarkMode        // bool

// Keyboard
context.isKeyboardVisible // bool
context.hideKeyboard()    // Unfocus

// Navigation (GoRouter)
context.go('/route')      // Navigate & replace
context.push('/route')    // Navigate
context.pop()             // Go back
context.currentRoute      // String

// Overlays
context.showSnackBar('msg')
context.showSuccessSnackBar('msg')
context.showErrorSnackBar('msg')
context.showTypedSnackBar('msg', type: SnackBarType.success)
context.showAppBottomSheet(builder: ...)
context.showAppDialog(builder: ...)
```

### 0.4 Responsive Sizing (screenutil)

**ALWAYS** use responsive units:

```dart
100.w       // Width (screen percentage)
20.h        // Height
14.sp       // Font size (scalable)
12.r        // Border radius
```

### 0.5 Localization (easy_localization)

**ALWAYS** use translation keys:

```dart
// CORRECT
text.tr()           // Inside Text widget
'auth.login'.tr()   // Direct string

// INCORRECT
Text('Login')       // Never hardcode
```

---

## 1. Architecture (Strict 3-Layer)

```
lib/
├── core/               # ⭐ Core abstractions (above)
├── features/
│   └── feature_name/
│       ├── data/
│       │   ├── models/
│       │   ├── datasources/
│       │   └── repositories/
│       ├── domain/
│       │   ├── entities/
│       │   ├── repositories/
│       │   └── usecases/
│       └── presentation/
│           ├── bloc/
│           ├── pages/
│           └── widgets/
```

### Layer Responsibilities:

| Layer | Contains | Can Import | Cannot Import |
|-------|----------|------------|---------------|
| **Presentation** | UI, BLoC | UseCases, Core imports | Data layer |
| **Domain** | Entities, UseCases, Repo Interfaces | Pure Dart ONLY | Flutter, 3rd party |
| **Data** | Models, DataSources, Repo Impl | Domain, Dio | Presentation |

### Cross-Layer Rules:
- ✅ Presentation → Domain (interfaces only)
- ✅ Data → Domain
- ❌ Presentation → Data (strictly forbidden)
- ❌ Domain → Flutter (strictly forbidden)

---

## 2. BLoC Rules (flutter_bloc)

### Structure per Feature:
```
bloc/
├── feature_bloc.dart
├── feature_event.dart
└── feature_state.dart
```

### State Requirements:
- Must be **immutable**
- Must extend `Equatable`
- Use `copyWith()` for updates
- Include `status` field (loading, success, error)

### Example State:
```dart
class LoginState extends Equatable {
  final String email;
  final String password;
  final bool isLoading;
  final String? errorMessage;
  final User? user;

  const LoginState({
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.errorMessage,
    this.user,
  });

  LoginState copyWith({...}) => ...

  @override
  List<Object?> get props => [email, password, isLoading, errorMessage, user];
}
```

### BlocBuilder Rules:
- Use `buildWhen` to prevent unnecessary rebuilds
- Listen to specific state changes only

---

## 3. Dependency Injection (get_it)

### Registration Rules:

| Type | Registration | Lifetime |
|------|-------------|----------|
| Repositories | `lazySingleton` | App lifetime |
| UseCases | `lazySingleton` | App lifetime |
| Blocs | `factory` | New instance per screen |
| Services | `lazySingleton` | App lifetime |

### Usage in UI:
```dart
// CORRECT
BlocProvider(
  create: (_) => sl<LoginBloc>(),
  child: ...
)

// CORRECT - with params
BlocProvider(
  create: (_) => sl<SomeBloc>(param1: value),
  child: ...
)
```

---

## 4. Import Rules

### ALWAYS Use Barrel Imports:

| Import | Path |
|--------|------|
| Core | `package:wassaly/core/imports/core_imports.dart` |
| Packages | `package:wassaly/core/imports/packages_imports.dart` |

### NEVER import directly:
- ❌ `import 'package:flutter/material.dart'`
- ❌ `import 'package:flutter_bloc/flutter_bloc.dart'`
- ❌ `import 'package:equatable/equatable.dart'`

### Cross-Feature Imports:
- ✅ Import from domain layer only
- ❌ Never import from another feature's data/presentation

---

## 5. UI Coding Standards

### Theme Access (ALWAYS use extensions):
```dart
// CORRECT
final cs = context.theme.colorScheme;
final tt = context.theme.textTheme;

// Usage
color: cs.primary,
style: tt.headlineMedium?.copyWith(...)
```

### Localization:
```dart
// CORRECT
Text('auth.login_title'.tr())

// INCORRECT
Text('Login')
```

### Responsive Sizing:
```dart
// Width
Container(width: 100.w)

// Height  
SizedBox(height: 20.h)

// Font size
style: TextStyle(fontSize: 14.sp)

// Radius
BorderRadius.circular(12.r)
```

### Navigation:
```dart
// Go (replace)
context.go(AppRoutes.home);

// Push (navigate)
context.push(AppRoutes.profile);

// Pop
context.pop();
```

---

## 6. Data Flow

```
UI → Bloc → UseCase → Repository → DataSource
     ↑______________________________↓
```

### Response Flow:
```
DataSource → Repository → UseCase → Bloc → UI
```

---

## 7. Error Handling (Either)

### Return Type:
```dart
Future<Either<Failure, User>> login(...);
```

### Failure Types (in core/error/):
- `ServerFailure`
- `CacheFailure`
- `NetworkFailure`
- `ValidationFailure`

### In Bloc:
```dart
result.fold(
  (failure) => emit(state.copyWith(
    errorMessage: failure.message,
    isLoading: false,
  )),
  (data) => emit(state.copyWith(
    data: data,
    isLoading: false,
  )),
);
```

---

## 8. Strict DON'Ts

| ❌ Never Do | ✅ Do Instead |
|-------------|---------------|
| Direct API calls in UI | Use Repository → Bloc |
| Business logic in Widgets | Move to Bloc/UseCase |
| Import data layer in presentation | Import domain only |
| Tight coupling between layers | Use interfaces/abstracts |
| `setState` for complex state | Use BLoC |
| Hard-coded strings | Use localization keys |
| Hard-coded colors | Use theme color scheme |
| Direct Dio calls | Use data source layer |

---

## 9. Code Style

### Naming:
- **Files**: `snake_case.dart`
- **Classes**: `PascalCase`
- **Variables/Functions**: `camelCase`
- **Constants**: `kPascalCase` or `SCREAMING_SNAKE`

### Constructors:
```dart
// Always use const when possible
const LoginPage({super.key});
const SizedBox.shrink();
```

### Widget Structure:
```dart
class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<MyBloc>(),
      child: const _MyView(),
    );
  }
}

class _MyView extends StatelessWidget {
  const _MyView();

  @override
  Widget build(BuildContext context) {
    // UI here
  }
}
```

---

## 10. Feature Generation Checklist

When creating a new feature, generate ALL of:

- [ ] **Entity** (domain/entities/)
- [ ] **Model** (data/models/) - extends Entity
- [ ] **Repository Interface** (domain/repositories/)
- [ ] **Repository Implementation** (data/repositories/)
- [ ] **Remote DataSource** (data/datasources/) - if needed
- [ ] **Local DataSource** (data/datasources/) - if needed
- [ ] **UseCase(s)** (domain/usecases/)
- [ ] **Bloc** (presentation/bloc/) - Event, State, Bloc
- [ ] **Page** (presentation/pages/)
- [ ] **Widget(s)** (presentation/widgets/) - if needed

---

## 11. API/Dio Standards

### Base Options:
- Timeout: 30 seconds
- Interceptors: Logging, Auth token, Error handling

### DataSource Pattern:
```dart
abstract class UserRemoteDataSource {
  Future<UserModel> getUser(String id);
}

class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioClient _client;
  
  UserRemoteDataSourceImpl(this._client);
  
  @override
  Future<UserModel> getUser(String id) async {
    final response = await _client.get('/users/$id');
    return UserModel.fromJson(response.data);
  }
}
```

---

## 12. Testing Standards

### Unit Tests Required For:
- UseCases
- Repositories  
- Blocs

### Widget Tests:
- Pages
- Complex widgets

---

## 13. CORE SERVICES (core/services/)

All shared services are registered in `get_it` and accessed via `sl<ServiceName>()`.

### Available Services:
```dart
// API Client
sl<DioClient>()           // Dio wrapper with interceptors

// Storage
sl<SharedPreferences>()   // Local storage
sl<FlutterSecureStorage>() // Secure storage

// Network
sl<InternetConnection>()  // Connectivity checker

// Location
sl<LocationService>()     // GPS/Location

// Notification
sl<NotificationService>() // Push/Local notifications
```

### Creating New Services:
1. Add interface + implementation in `core/services/`
2. Register in `core/injection/injection.dart`
3. Use `sl<Service>()` to access

---

## 14. CORE ROUTING (core/routing/)

### Route Constants (ALWAYS use these):
```dart
AppRoutes.home           // '/'
AppRoutes.login          // '/login'
AppRoutes.signup         // '/signup'
AppRoutes.profile        // '/profile'
// ... etc
```

### Navigation Methods:
```dart
// In Widgets - use context extensions
context.go(AppRoutes.home)      // Replace stack
context.push(AppRoutes.detail)  // Add to stack
context.pop()                   // Go back

// Outside Widgets - use GlobalNavigator
GlobalNavigator.go(AppRoutes.home);
GlobalNavigator.push(AppRoutes.detail);
GlobalNavigator.pop();
```

### Route Guards:
Auth guards, role checks implemented in `AppRouter`.

---

## 15. CORE THEME (core/theme/)

### Accessing Theme:
```dart
// Via context (RECOMMENDED)
final cs = context.theme.colorScheme;
final tt = context.theme.textTheme;
final appColors = context.appColors;
final tokens = context.designTokens;
```

### Color Scheme Usage:
```dart
// Primary colors
cs.primary           // Main brand color
cs.onPrimary         // Text on primary
cs.primaryContainer  // Primary surface

// Surface colors
cs.surface           // Background
cs.surfaceContainer  // Cards
cs.surfaceContainerHighest // Inputs

// Semantic colors
cs.error             // Error state
cs.outline           // Borders
cs.shadow            // Shadows

// Custom app colors (via extension)
context.appColors.success    // Green
cs.appColors.warning         // Orange/Yellow
cs.appColors.info           // Blue
```

### Typography Usage:
```dart
tt.displayLarge     // 57sp - Hero text
tt.headlineLarge    // 32sp - Page titles
tt.headlineMedium   // 28sp - Section headers
tt.titleLarge       // 22sp - Card titles
tt.bodyLarge        // 16sp - Primary text
tt.bodyMedium       // 14sp - Secondary text
tt.bodySmall        // 12sp - Captions
```

### Design Tokens:
```dart
tokens.spacingXs      // 4
Tokens.spacingSm      // 8
tokens.spacingMd      // 16
tokens.spacingLg      // 24
tokens.spacingXl      // 32

tokens.radiusSm       // 8
tokens.radiusMd       // 12
tokens.radiusLg       // 16
tokens.radiusXl       // 24
```

---

## 16. CORE SHARED WIDGETS (core/shared/widgets/)

**ALWAYS** use these shared widgets instead of raw Flutter widgets.

### Form Widgets:
```dart
AppTextField()        // Text input with theming
AppButton()           // Primary/secondary/outline buttons
AppDropdown()         // Select dropdown
AppCheckbox()         // Checkbox with label
AppRadio()            // Radio button
```

### Feedback Widgets:
```dart
AppLoading()          // Loading spinner
AppError()            // Error display
AppEmptyState()       // Empty list state
AppSkeleton()         // Shimmer loading
```

### Layout Widgets:
```dart
AppCard()             // Styled card container
AppDivider()          // Themed divider
AppScaffold()         // App scaffold with defaults
ResponsiveWrapper()   // Responsive layout
```

### Data Widgets:
```dart
AppListView()         // Paginated list
AppImage()            // Cached image with placeholder
AppSvg()              // SVG icon with sizing
```

---

## 17. Quick Reference

### File Header Template (ALWAYS use this):
```dart
import 'package:wassaly/core/imports/core_imports.dart';
import 'package:wassaly/core/imports/packages_imports.dart';
import 'package:wassaly/core/injection/injection.dart';

// Then feature-specific imports...
```

### Core Extensions Reference:
```dart
// Theme & Colors
context.theme                 // ThemeData
context.theme.colorScheme     // ColorScheme (cs)
context.theme.textTheme       // TextTheme (tt)
context.colors                // ColorScheme alias
context.appColors.success     // Custom colors
context.designTokens          // Spacing/radii tokens

// Navigation
context.go('/route')          // GoRouter - replace
context.push('/route')        // GoRouter - push
context.pop()                 // Go back
context.currentRoute          // String current path

// Screen
context.width                 // double
context.height                // double
context.safeArea              // EdgeInsets
context.isDarkMode            // bool
context.isIOS / isAndroid     // bool

// Keyboard
context.isKeyboardVisible     // bool
context.hideKeyboard()        // Unfocus

// Overlays
context.showSnackBar('msg')
context.showSuccessSnackBar('msg')
context.showErrorSnackBar('msg')
context.showAppBottomSheet(builder: ...)
context.showAppDialog(builder: ...)
```

### Responsive Sizes:
```dart
// Padding
EdgeInsets.symmetric(horizontal: 24.w)  // Standard horizontal
EdgeInsets.all(20.w)                     // Standard padding

// Spacing
SizedBox(height: 20.h)      // Standard gap
SizedBox(height: 8.h)       // Small gap
SizedBox(height: 32.h)      // Large gap

// Typography
fontSize: 28.sp     // Headline
fontSize: 22.sp     // Title
fontSize: 16.sp     // Body large
fontSize: 14.sp     // Body medium (default)
fontSize: 12.sp     // Body small / caption

// Radius
BorderRadius.circular(12.r)   // Input fields
BorderRadius.circular(16.r)   // Cards
BorderRadius.circular(24.r)     // Modals
```

### Dependency Injection:
```dart
// In UI (BlocProvider)
BlocProvider(create: (_) => sl<LoginBloc>())

// With parameters
BlocProvider(create: (_) => sl<OrderBloc>(param1: orderId))
```

### Localization:
```dart
'key'.tr()              // Simple translation
'key'.tr(args: [...])   // With arguments
Text('key'.tr())        // In widgets
text.tr()              // String extension
```

### State Management (BLoC):
```dart
// Read
context.read<BlocA>()

// Watch (rebuild on changes)
BlocBuilder<BlocA, StateA>(...)

// Listen (side effects)
BlocListener<BlocA, StateA>(...)

// Both
BlocConsumer<BlocA, StateA>(...)
```

---

## 18. GENERATION CHECKLIST (Before Submitting Code)

### For ANY generated code:
- [ ] Uses `core_imports.dart` and `packages_imports.dart`
- [ ] Uses `context.theme.colorScheme` for colors (never hardcoded)
- [ ] Uses `text.tr()` for strings (never hardcoded)
- [ ] Uses responsive units (`.w`, `.h`, `.sp`, `.r`)
- [ ] Uses `const` constructors where possible
- [ ] Follows naming conventions (PascalCase, camelCase, snake_case)

### For Features:
- [ ] All 3 layers implemented (domain/data/presentation)
- [ ] Repository interface in domain
- [ ] Repository implementation in data
- [ ] UseCase in domain
- [ ] BLoC with Event/State
- [ ] Page uses `_View` pattern with BlocProvider
- [ ] Uses shared widgets from core

### For UI:
- [ ] Uses context extensions for theme
- [ ] Uses `BlocBuilder` with `buildWhen` optimization
- [ ] Uses `BlocListener` for navigation/snackbars
- [ ] Handles loading states
- [ ] Handles error states

---

**Last Updated**: Auto-generated by AI  
**Location**: `lib/core/GLOBAL_RULES.md`  
**Follow these rules strictly for all code generation**
