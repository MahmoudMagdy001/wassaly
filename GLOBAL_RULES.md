# 🏗️ GLOBAL FLUTTER ARCHITECTURE RULES

> **Universal rules for ALL Flutter projects** - Replace `[YOUR_PROJECT_NAME]` with your actual package name.
> **START HERE**: `core/imports/` barrel imports are mandatory for every file.

---

## ✨ **Quick Start Checklist**

Every Dart file must have:
```dart
import 'package:[YOUR_PROJECT_NAME]/core/imports/core_imports.dart';
import 'package:[YOUR_PROJECT_NAME]/core/imports/packages_imports.dart';
import 'package:[YOUR_PROJECT_NAME]/core/injection/injection.dart';
```

---

## 0. CORE LAYER (The Foundation)

The `core/` directory is the **single source of truth** for your entire app.

### 0.1 Core Directory Structure

```
lib/core/
├── config/              # App configuration, environment vars
├── extensions/          # All extension methods (NEVER inline)
│   └── context_extension.dart  # Main context extensions
├── imports/             # ⭐ BARREL IMPORTS (mandatory)
│   ├── core_imports.dart       # Flutter SDK + Core packages
│   └── packages_imports.dart   # 3rd party packages
├── injection/           # get_it dependency injection setup
├── routing/             # GoRouter configuration & routes
├── services/            # Shared services (API, Cache, etc.)
├── shared/              # Shared widgets, enums, helpers
│   ├── widgets/         # Reusable UI components
│   ├── enums/           # App-wide enums
│   └── helpers/         # Utility functions
├── theme/               # Design system
│   ├── app_theme.dart   # ThemeData
│   ├── color_scheme.dart # Color definitions
│   └── design_tokens.dart # Spacing, radii, typography
├── utils/               # Utility functions (validators, etc.)
└── GLOBAL_RULES.md      # This file
```

### 0.2 Import Rules (STRICT - NON-NEGOTIABLE)

**Golden Rule**: Always use **barrel imports**. Never import packages directly.

| Import Type | ✅ CORRECT | ❌ INCORRECT |
|-------------|-----------|------------|
| Flutter + Core | `core/imports/core_imports.dart` | `import 'package:flutter/material.dart'` |
| 3rd Party | `core/imports/packages_imports.dart` | `import 'package:equatable/equatable.dart'` |

**Every generated file MUST start with:**
```dart
import 'package:[YOUR_PROJECT_NAME]/core/imports/core_imports.dart';
import 'package:[YOUR_PROJECT_NAME]/core/imports/packages_imports.dart';
import 'package:[YOUR_PROJECT_NAME]/core/injection/injection.dart';

// Then feature-specific imports
import 'package:[YOUR_PROJECT_NAME]/features/feature_name/domain/entities/entity.dart';
```

### 0.3 Core Extensions (ALWAYS Use These)

Located in `core/extensions/context_extension.dart`. Access everything through `context`:

#### 🎨 Theme & Colors
```dart
context.theme              // ThemeData
context.theme.colorScheme // ColorScheme (recommended: use `cs`)
context.theme.textTheme   // TextTheme (recommended: use `tt`)
context.colors            // Alias for colorScheme
context.typography        // Alias for textTheme
context.appColors         // Custom app colors (success, warning, info)
context.designTokens      // Spacing, radius tokens
```

#### 📱 MediaQuery
```dart
context.screenSize        // Size { width, height }
context.width             // double - full screen width
context.height            // double - full screen height
context.safeArea          // EdgeInsets - safe area padding
context.devicePadding     // EdgeInsets - device padding
```

#### 🖥️ Platform Detection
```dart
context.isIOS             // bool
context.isAndroid         // bool
context.isDarkMode        // bool
context.isTablet          // bool (optional, device-dependent)
```

#### ⌨️ Keyboard
```dart
context.isKeyboardVisible // bool
context.keyboardHeight    // double
context.hideKeyboard()    // Unfocus text field
```

#### 🧭 Navigation (GoRouter)
```dart
context.go('/route')      // Navigate & replace stack
context.push('/route')    // Navigate & push to stack
context.pushNamed('routeName', extra: data) // Push named route
context.pop()             // Go back
context.pop(result)       // Go back with result
context.currentRoute      // String - current route path
```

#### 🎯 Overlays & Feedback
```dart
context.showSnackBar('message')
context.showSnackBar('msg', duration: Duration(seconds: 5))
context.showSuccessSnackBar('Operation successful')
context.showErrorSnackBar('Something went wrong')
context.showTypedSnackBar('msg', type: SnackBarType.warning)
context.showAppBottomSheet(builder: (context) => ...)
context.showAppDialog(builder: (context) => ...)
context.showAppBottomSheet(
  builder: (_) => ...,
  isScrollable: true,
  isDismissible: true,
)
```

### 0.4 Responsive Sizing (ScreenUtil Package)

**MANDATORY**: Use responsive units for ALL dimensions.

```dart
// Width (percentage of screen width)
100.w       // 100% of screen width
50.w        // 50% of screen width

// Height (percentage of screen height)
20.h        // 20% of screen height
30.h        // 30% of screen height

// Font size (scalable across devices)
14.sp       // 14px (scales on different devices)
22.sp       // 22px headline

// Border radius (responsive)
12.r        // 12px radius
24.r        // 24px radius

// Example usage
Padding(
  padding: EdgeInsets.all(16.w),  // Dynamic padding
  child: Text(
    'Title',
    style: TextStyle(fontSize: 18.sp),  // Responsive font
  ),
)
```

---

## 1. ARCHITECTURE (Strict 3-Layer)

```
lib/
├── core/                    # ⭐ Shared abstractions
├── features/
│   ├── feature_one/
│   │   ├── data/           # 📊 Persistence layer
│   │   │   ├── models/     # API response parsing
│   │   │   ├── datasources/ # API/Cache calls
│   │   │   └── repositories/ # Repository implementation
│   │   ├── domain/         # 🧠 Business logic layer
│   │   │   ├── entities/   # Pure Dart objects
│   │   │   ├── repositories/ # Abstract interfaces
│   │   │   └── usecases/   # Business rules
│   │   └── presentation/   # 🎨 UI layer
│   │       ├── bloc/       # State management
│   │       ├── pages/      # Full screens
│   │       └── widgets/    # Reusable components
│   └── feature_two/        # Same structure...
└── main.dart               # App entry point
```

### Layer Responsibilities & Import Rules

| Layer | Purpose | Contains | ✅ Can Import | ❌ Cannot Import |
|-------|---------|----------|-------------|-----------------|
| **Presentation** | UI & UX | Pages, Widgets, BLoC | Domain, Core | Data layer directly |
| **Domain** | Business Logic | Entities, UseCases, Interfaces | Pure Dart ONLY | Flutter, packages |
| **Data** | Persistence | Models, DataSources, Implementations | Domain, HTTP libs | Presentation |

### Critical Cross-Layer Rules

```
✅ ALLOWED:
  Presentation → Domain (interfaces only)
  Presentation → Core
  Domain → Core
  Data → Domain
  Data → Core

❌ FORBIDDEN:
  Presentation → Data (direct imports)
  Domain → Presentation
  Domain → Flutter/packages
  Cyclic imports
```

### Why This Matters
- **Testability**: Domain layer has zero dependencies
- **Reusability**: Data layer can be swapped without touching UI
- **Clarity**: Each layer has a single responsibility
- **Scalability**: Features don't know about each other

---

## 2. BLoC State Management (flutter_bloc)

### Directory Structure per Feature

```
feature_name/presentation/bloc/
├── feature_bloc.dart       # Bloc class
├── feature_event.dart      # Events (user actions)
└── feature_state.dart      # States (UI states)
```

### State Requirements

States MUST be:
- ✅ **Immutable** (use `final` for all fields)
- ✅ **Extend Equatable** (for comparison)
- ✅ **Implement copyWith()** (for creating new instances)
- ✅ **Include status field** (loading, success, error)
- ✅ **Have @override props** (for equality)

### Complete State Example

```dart
import 'package:[YOUR_PROJECT_NAME]/core/imports/core_imports.dart';

class LoginState extends Equatable {
  final String email;
  final String password;
  final bool isLoading;
  final String? errorMessage;
  final User? user;
  final bool isPasswordVisible;

  const LoginState({
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.errorMessage,
    this.user,
    this.isPasswordVisible = false,
  });

  // copyWith is crucial for immutability
  LoginState copyWith({
    String? email,
    String? password,
    bool? isLoading,
    String? errorMessage,
    User? user,
    bool? isPasswordVisible,
  }) =>
      LoginState(
        email: email ?? this.email,
        password: password ?? this.password,
        isLoading: isLoading ?? this.isLoading,
        errorMessage: errorMessage ?? this.errorMessage,
        user: user ?? this.user,
        isPasswordVisible: isPasswordVisible ?? this.isPasswordVisible,
      );

  @override
  List<Object?> get props => [
    email,
    password,
    isLoading,
    errorMessage,
    user,
    isPasswordVisible,
  ];
}
```

### Event Example

```dart
abstract class LoginEvent extends Equatable {
  const LoginEvent();
}

class LoginEmailChanged extends LoginEvent {
  final String email;
  const LoginEmailChanged(this.email);
  
  @override
  List<Object> get props => [email];
}

class LoginPasswordChanged extends LoginEvent {
  final String password;
  const LoginPasswordChanged(this.password);
  
  @override
  List<Object> get props => [password];
}

class LoginSubmitted extends LoginEvent {
  const LoginSubmitted();
  
  @override
  List<Object> get props => [];
}
```

### BLoC Implementation

```dart
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final LoginUseCase _loginUseCase;
  final ValidateEmailUseCase _validateEmail;

  LoginBloc({
    required LoginUseCase loginUseCase,
    required ValidateEmailUseCase validateEmail,
  })  : _loginUseCase = loginUseCase,
        _validateEmail = validateEmail,
        super(const LoginState()) {
    // Register event handlers
    on<LoginEmailChanged>(_onEmailChanged);
    on<LoginPasswordChanged>(_onPasswordChanged);
    on<LoginSubmitted>(_onSubmitted);
  }

  Future<void> _onEmailChanged(
    LoginEmailChanged event,
    Emitter<LoginState> emit,
  ) async {
    final isValid = _validateEmail(event.email);
    emit(state.copyWith(
      email: event.email,
      errorMessage: isValid ? null : 'Invalid email',
    ));
  }

  Future<void> _onPasswordChanged(
    LoginPasswordChanged event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(password: event.password));
  }

  Future<void> _onSubmitted(
    LoginSubmitted event,
    Emitter<LoginState> emit,
  ) async {
    emit(state.copyWith(isLoading: true));

    final result = await _loginUseCase(LoginParams(
      email: state.email,
      password: state.password,
    ));

    result.fold(
      (failure) => emit(state.copyWith(
        isLoading: false,
        errorMessage: failure.message,
      )),
      (user) => emit(state.copyWith(
        isLoading: false,
        user: user,
        errorMessage: null,
      )),
    );
  }
}
```

### BLoC Usage in UI (CORRECT PATTERNS)

```dart
// ✅ Using BlocBuilder with buildWhen optimization
BlocBuilder<LoginBloc, LoginState>(
  buildWhen: (previous, current) =>
    previous.isLoading != current.isLoading ||
    previous.errorMessage != current.errorMessage,
  builder: (context, state) {
    if (state.isLoading) {
      return const AppLoading();
    }
    if (state.errorMessage != null) {
      return AppError(message: state.errorMessage!);
    }
    return const LoginForm();
  },
)

// ✅ Using BlocListener for one-time events
BlocListener<LoginBloc, LoginState>(
  listenWhen: (previous, current) => current.user != null,
  listener: (context, state) {
    context.showSuccessSnackBar('Login successful');
    context.go(AppRoutes.home);
  },
  child: const LoginForm(),
)

// ✅ Using BlocSelector to select specific properties
BlocSelector<LoginBloc, LoginState, bool>(
  selector: (state) => state.isLoading,
  builder: (context, isLoading) {
    return AppButton(
      onPressed: () => context.read<LoginBloc>().add(LoginSubmitted()),
      isLoading: isLoading,
      label: 'Login',
    );
  },
)
```

---

## 3. Dependency Injection (get_it)

### Registration Lifecycle Patterns

| Component | Pattern | Lifetime | When to Use |
|-----------|---------|----------|------------|
| **Repositories** | `lazySingleton` | App lifetime | Once per app |
| **UseCases** | `lazySingleton` | App lifetime | Once per app |
| **Services** | `lazySingleton` | App lifetime | API, Cache, Location |
| **BLoCs** | `factory` | Per screen | New per injection |
| **Cubits** | `factory` | Per screen | New per injection |

### Injection Setup Example

```dart
// lib/core/injection/injection.dart
import 'package:get_it/get_it.dart';

final sl = GetIt.instance; // Service locator alias

Future<void> setupServiceLocator() async {
  // === CORE SERVICES ===
  sl.registerLazySingleton<DioClient>(() => DioClient());
  sl.registerLazySingleton<SharedPreferences>(
    () => await SharedPreferences.getInstance(),
  );
  sl.registerLazySingleton<FlutterSecureStorage>(
    () => const FlutterSecureStorage(),
  );

  // === DATA LAYER (Feature: Auth) ===
  sl.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(sl<DioClient>()),
  );
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(sl<AuthRemoteDataSource>()),
  );

  // === DOMAIN LAYER (Feature: Auth) ===
  sl.registerLazySingleton<LoginUseCase>(
    () => LoginUseCase(sl<AuthRepository>()),
  );
  sl.registerLazySingleton<SignupUseCase>(
    () => SignupUseCase(sl<AuthRepository>()),
  );

  // === PRESENTATION LAYER (Feature: Auth) ===
  sl.registerFactory<AuthBloc>(
    () => AuthBloc(
      loginUseCase: sl<LoginUseCase>(),
      signupUseCase: sl<SignupUseCase>(),
    ),
  );
}
```

### Usage in UI

```dart
// ✅ CORRECT - In BlocProvider
BlocProvider(
  create: (_) => sl<LoginBloc>(),
  child: const LoginPage(),
)

// ✅ CORRECT - With parameters
BlocProvider(
  create: (_) => sl<OrderBloc>(orderId: '123'),
  child: const OrderPage(),
)

// ✅ CORRECT - Reading in widgets
ElevatedButton(
  onPressed: () => context.read<LoginBloc>().add(LoginSubmitted()),
  child: const Text('Login'),
)

// ❌ INCORRECT - Direct instantiation
final bloc = LoginBloc(); // Never do this!

// ❌ INCORRECT - Creating in build
BlocProvider(
  create: (_) => LoginBloc(), // Use sl instead!
  child: child,
)
```

---

## 4. Data Flow Architecture

### Request Flow (User Action → Server)

```
User Input
    ↓
Widget → BLoC.add(Event)
    ↓
BLoC.on<Event>()
    ↓
UseCase(params)
    ↓
Repository.method(params)
    ↓
DataSource.call()
    ↓
HTTP/Database
```

### Response Flow (Server → UI Update)

```
HTTP/Database
    ↓
DataSource (parse)
    ↓
Repository (handle Either)
    ↓
UseCase (execute)
    ↓
BLoC.emit(NewState)
    ↓
BLoC.on<Event> processes
    ↓
BlocBuilder rebuilds
    ↓
UI Updates
```

---

## 5. Error Handling (Either<Failure, Success>)

### Failure Types (Core Layer)

```dart
// lib/core/error/failures.dart
abstract class Failure extends Equatable {
  final String message;
  const Failure(this.message);
}

class ServerFailure extends Failure {
  const ServerFailure(String message) : super(message);
  
  @override
  List<Object?> get props => [message];
}

class CacheFailure extends Failure {
  const CacheFailure(String message) : super(message);
  
  @override
  List<Object?> get props => [message];
}

class NetworkFailure extends Failure {
  const NetworkFailure(String message) : super(message);
  
  @override
  List<Object?> get props => [message];
}

class ValidationFailure extends Failure {
  const ValidationFailure(String message) : super(message);
  
  @override
  List<Object?> get props => [message];
}

class UnknownFailure extends Failure {
  const UnknownFailure([String message = 'Unknown error'])
    : super(message);
  
  @override
  List<Object?> get props => [message];
}
```

### Repository Pattern (Either)

```dart
// Domain layer - abstract
abstract class AuthRepository {
  Future<Either<Failure, User>> login(String email, String password);
}

// Data layer - implementation
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource _remoteDataSource;

  AuthRepositoryImpl(this._remoteDataSource);

  @override
  Future<Either<Failure, User>> login(String email, String password) async {
    try {
      final userModel = await _remoteDataSource.login(email, password);
      return Right(userModel.toEntity());
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message));
    } on NetworkException catch (_) {
      return Left(NetworkFailure('No internet connection'));
    } catch (e) {
      return Left(UnknownFailure());
    }
  }
}
```

### BLoC Error Handling

```dart
Future<void> _onLoginSubmitted(
  LoginSubmitted event,
  Emitter<LoginState> emit,
) async {
  emit(state.copyWith(isLoading: true));

  final result = await _loginUseCase(LoginParams(
    email: state.email,
    password: state.password,
  ));

  result.fold(
    // Handle Failure
    (failure) => emit(state.copyWith(
      isLoading: false,
      errorMessage: failure.message,
    )),
    // Handle Success
    (user) => emit(state.copyWith(
      isLoading: false,
      user: user,
      errorMessage: null,
    )),
  );
}
```

---

## 6. UI Coding Standards

### Theme Access (ALWAYS Use Extensions)

```dart
// ✅ CORRECT - Using context extensions
final cs = context.theme.colorScheme;
final tt = context.theme.textTheme;

// Usage
Container(
  color: cs.primary,
  child: Text(
    'Hello',
    style: tt.headlineMedium?.copyWith(
      color: cs.onPrimary,
    ),
  ),
)

// ❌ INCORRECT - Hard-coded colors
Container(
  color: Color(0xFF6750A4),
  child: Text('Hello'),
)
```

### Complete UI Example

```dart
class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'login'.tr(),  // Localization
          style: tt.headlineSmall?.copyWith(
            color: cs.onPrimary,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 24.w,
          vertical: 16.h,
        ),
        child: BlocListener<AuthBloc, AuthState>(
          listenWhen: (prev, curr) => curr.user != null,
          listener: (context, state) {
            context.showSuccessSnackBar('Login successful');
            context.go(AppRoutes.home);
          },
          child: BlocBuilder<AuthBloc, AuthState>(
            buildWhen: (prev, curr) =>
              prev.isLoading != curr.isLoading ||
              prev.errorMessage != curr.errorMessage,
            builder: (context, state) {
              return Column(
                spacing: 16.h,
                children: [
                  // Email field
                  AppTextField(
                    hintText: 'email'.tr(),
                    onChanged: (value) =>
                      context.read<AuthBloc>()
                        .add(EmailChanged(value)),
                    prefixIcon: Icons.email,
                  ),
                  
                  // Password field
                  AppTextField(
                    hintText: 'password'.tr(),
                    onChanged: (value) =>
                      context.read<AuthBloc>()
                        .add(PasswordChanged(value)),
                    isPassword: true,
                    prefixIcon: Icons.lock,
                  ),

                  // Error message
                  if (state.errorMessage != null)
                    AppError(message: state.errorMessage!),

                  // Login button
                  AppButton(
                    onPressed: () => context.read<AuthBloc>()
                      .add(const LoginSubmitted()),
                    isLoading: state.isLoading,
                    label: 'login'.tr(),
                  ),

                  // Loading indicator
                  if (state.isLoading)
                    const AppLoading(),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
```

---

## 7. Navigation (GoRouter)

### Route Definition

```dart
// lib/core/routing/app_routes.dart
class AppRoutes {
  static const String splash = '/';
  static const String login = '/login';
  static const String signup = '/signup';
  static const String home = '/home';
  static const String profile = '/profile/:userId';
  static const String details = '/details/:id';
  
  // Settings
  static const String settings = '/settings';
  static const String theme = '/settings/theme';
}

// lib/core/routing/app_router.dart
final appRouter = GoRouter(
  initialLocation: AppRoutes.splash,
  routes: [
    GoRoute(
      path: AppRoutes.splash,
      builder: (context, state) => const SplashPage(),
    ),
    GoRoute(
      path: AppRoutes.login,
      builder: (context, state) => BlocProvider(
        create: (_) => sl<AuthBloc>(),
        child: const LoginPage(),
      ),
    ),
    GoRoute(
      path: AppRoutes.home,
      builder: (context, state) => const HomePage(),
      routes: [
        GoRoute(
          path: 'details/:id',
          builder: (context, state) {
            final id = state.pathParameters['id']!;
            return DetailsPage(id: id);
          },
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.profile,
      builder: (context, state) {
        final userId = state.pathParameters['userId']!;
        return ProfilePage(userId: userId);
      },
    ),
  ],
  errorBuilder: (context, state) => const ErrorPage(),
);
```

### Navigation Usage

```dart
// ✅ Using context extensions (recommended)
context.go(AppRoutes.home)              // Replace
context.push(AppRoutes.profile)         // Stack
context.pop()                           // Back

// ✅ With parameters
context.push(
  '${AppRoutes.details}/123',
  extra: {'data': someData},
)

// ✅ With query parameters
context.push(
  '${AppRoutes.profile}/user123?tab=posts',
)

// ✅ Pop with result
context.pop(result: 'some_value')
```

---

## 8. Shared Widgets (core/shared/widgets/)

**RULE**: Always use these instead of raw Flutter widgets. They ensure consistency.

### Form Widgets

```dart
// Text input
AppTextField(
  hintText: 'Enter email',
  onChanged: (value) => {},
  validator: (value) => value?.isEmpty ?? true ? 'Required' : null,
  prefixIcon: Icons.email,
  suffixIcon: Icons.clear,
  keyboardType: TextInputType.email,
  maxLength: 100,
)

// Button
AppButton(
  onPressed: () => {},
  label: 'Submit',
  isLoading: false,
  variant: ButtonVariant.primary,  // primary, secondary, outline
  size: ButtonSize.large,          // small, medium, large
  icon: Icons.send,
)

// Checkbox
AppCheckbox(
  value: isChecked,
  onChanged: (value) => {},
  label: 'I agree to terms',
)

// Dropdown
AppDropdown<String>(
  value: selectedValue,
  items: ['Option 1', 'Option 2'],
  onChanged: (value) => {},
  hintText: 'Select option',
)
```

### Feedback Widgets

```dart
// Loading spinner
const AppLoading(
  message: 'Loading...',
)

// Error state
AppError(
  message: 'Something went wrong',
  onRetry: () => {},
)

// Empty state
AppEmptyState(
  title: 'No items',
  subtitle: 'Add your first item to get started',
  icon: Icons.inbox,
)

// Loading skeleton
AppSkeleton(
  height: 100.h,
  width: double.infinity,
)
```

### Layout Widgets

```dart
// Styled card
AppCard(
  padding: EdgeInsets.all(16.w),
  onTap: () => {},
  child: Text('Card content'),
)

// Divider
const AppDivider()

// Custom scaffold
AppScaffold(
  appBar: AppBar(title: const Text('Title')),
  body: const SizedBox(),
)

// Responsive wrapper
ResponsiveWrapper(
  mobile: MobileLayout(),
  tablet: TabletLayout(),
  desktop: DesktopLayout(),
)
```

### Data Display Widgets

```dart
// Paginated list
AppListView<ItemModel>(
  items: items,
  onLoadMore: () async => {},
  itemBuilder: (item) => ListTile(title: Text(item.name)),
)

// Cached image
AppImage(
  imageUrl: 'https://...',
  height: 200.h,
  width: double.infinity,
  fit: BoxFit.cover,
  placeholder: const AppSkeleton(),
  errorWidget: const Icon(Icons.error),
)

// SVG icon
AppSvg(
  'assets/icons/home.svg',
  height: 24.r,
  width: 24.r,
  color: context.theme.colorScheme.primary,
)
```

---

## 9. API & Dio Standards

### DioClient Setup

```dart
// lib/core/services/dio_client.dart
class DioClient {
  late final Dio _dio;

  DioClient() {
    _dio = Dio(BaseOptions(
      baseUrl: 'https://api.example.com/v1',
      connectTimeout: const Duration(seconds: 30),
      receiveTimeout: const Duration(seconds: 30),
      contentType: Headers.jsonContentType,
      responseType: ResponseType.json,
    ));

    // Add interceptors
    _dio.interceptors.addAll([
      LoggingInterceptor(),
      AuthInterceptor(),
      ErrorHandlingInterceptor(),
    ]);
  }

  Future<dynamic> get(String path, {Map<String, dynamic>? params}) async {
    try {
      final response = await _dio.get(path, queryParameters: params);
      return response.data;
    } catch (e) {
      _handleError(e);
    }
  }

  Future<dynamic> post(String path, {dynamic data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response.data;
    } catch (e) {
      _handleError(e);
    }
  }

  void _handleError(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          throw NetworkException('Connection timeout');
        case DioExceptionType.receiveTimeout:
          throw NetworkException('Receive timeout');
        case DioExceptionType.badResponse:
          throw ServerException(error.response?.statusCode ?? 500);
        case DioExceptionType.unknown:
          throw NetworkException('No internet connection');
        default:
          throw UnknownException();
      }
    }
  }
}
```

### DataSource Pattern

```dart
// ABSTRACT INTERFACE
abstract class UserRemoteDataSource {
  Future<UserModel> getUser(String id);
  Future<UserModel> updateUser(String id, UserModel user);
}

// IMPLEMENTATION
class UserRemoteDataSourceImpl implements UserRemoteDataSource {
  final DioClient _dioClient;

  UserRemoteDataSourceImpl(this._dioClient);

  @override
  Future<UserModel> getUser(String id) async {
    try {
      final response = await _dioClient.get('/users/$id');
      return UserModel.fromJson(response);
    } on ServerException catch (e) {
      throw ServerException(e.message);
    } on NetworkException catch (e) {
      throw NetworkException(e.message);
    }
  }

  @override
  Future<UserModel> updateUser(String id, UserModel user) async {
    try {
      final response = await _dioClient.post(
        '/users/$id',
        data: user.toJson(),
      );
      return UserModel.fromJson(response);
    } on ServerException catch (e) {
      throw ServerException(e.message);
    }
  }
}
```

---

## 10. Testing Standards

### Unit Tests (UseCases, Repositories, BLoCs)

```dart
void main() {
  late MockLoginRepository mockLoginRepository;
  late LoginBloc loginBloc;

  setUp(() {
    mockLoginRepository = MockLoginRepository();
    loginBloc = LoginBloc(loginRepository: mockLoginRepository);
  });

  tearDown(() {
    loginBloc.close();
  });

  group('LoginBloc', () {
    test('initial state is LoginState()', () {
      expect(loginBloc.state, equals(const LoginState()));
    });

    blocTest<LoginBloc, LoginState>(
      'emits [loading, success] when login succeeds',
      build: () {
        when(mockLoginRepository.login(any, any))
          .thenAnswer((_) async => Right(testUser));
        return loginBloc;
      },
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => [
        const LoginState(isLoading: true),
        LoginState(isLoading: false, user: testUser),
      ],
    );

    blocTest<LoginBloc, LoginState>(
      'emits [loading, error] when login fails',
      build: () {
        when(mockLoginRepository.login(any, any))
          .thenAnswer((_) async =>
            Left(ServerFailure('Invalid credentials')));
        return loginBloc;
      },
      act: (bloc) => bloc.add(const LoginSubmitted()),
      expect: () => [
        const LoginState(isLoading: true),
        const LoginState(
          isLoading: false,
          errorMessage: 'Invalid credentials',
        ),
      ],
    );
  });
}
```

### Widget Tests

```dart
void main() {
  testWidgets('LoginPage renders correctly', (tester) async {
    await tester.pumpWidget(
      MultiBlocProvider(
        providers: [
          BlocProvider<AuthBloc>(
            create: (_) => MockAuthBloc(),
          ),
        ],
        child: const MaterialApp(
          home: LoginPage(),
        ),
      ),
    );

    expect(find.byType(AppTextField), findsWidgets);
    expect(find.byType(AppButton), findsOneWidget);
  });

  testWidgets('Login button triggers LoginSubmitted event',
    (tester) async {
    final mockBloc = MockAuthBloc();
    
    await tester.pumpWidget(
      BlocProvider<AuthBloc>(
        create: (_) => mockBloc,
        child: const MaterialApp(home: LoginPage()),
      ),
    );

    await tester.tap(find.byType(AppButton));
    await tester.pumpAndSettle();

    verify(mockBloc.add(const LoginSubmitted())).called(1);
  });
}
```

---

## 11. Code Style & Naming Conventions

### Naming Rules (STRICT)

| Element | Convention | Example |
|---------|-----------|---------|
| **Files** | `snake_case.dart` | `user_repository.dart` |
| **Classes** | `PascalCase` | `LoginBloc`, `UserModel` |
| **Functions** | `camelCase` | `getUserData()`, `validateEmail()` |
| **Variables** | `camelCase` | `userName`, `isLoading` |
| **Constants** | `camelCase` | `const defaultTimeout = 30;` |
| **Private** | `_leading_underscore` | `_privateMethod()`, `_privateVar` |
| **Getters** | `camelCase` | `get isValid => ...` |
| **Features** | `snake_case` | `lib/features/user_auth/` |
| **Routes** | `camelCase` | `AppRoutes.userProfile` |

### Formatting

```dart
// ✅ Use const constructors
const SizedBox(height: 16.h)
const Text('Hello')

// ✅ Organize imports (Dart convention)
// 1. Core imports (package:flutter, etc.)
// 2. Barrel imports (core/imports/)
// 3. Feature imports
// 4. Relative imports

import 'package:flutter/material.dart';
import 'package:[YOUR_PROJECT_NAME]/core/imports/core_imports.dart';
import 'package:[YOUR_PROJECT_NAME]/features/auth/domain/entities/user.dart';
import '../widgets/custom_widget.dart';

// ✅ Use trailing commas (Dart formatter will handle line breaks)
const EdgeInsets.all(
  16.w,
) // Prettier formatting

// ✅ Use `late` for variables that will be initialized later
late final AuthBloc authBloc;

// ❌ Avoid magic numbers
// Bad:
Padding(padding: EdgeInsets.only(left: 15.5.w))
// Good:
Padding(padding: EdgeInsets.only(left: context.designTokens.spacingMd))
```

---

## 12. Localization (easy_localization)

### String Keys

```dart
// ✅ CORRECT - Always localize
Text('welcome'.tr())
context.showSnackBar('success_message'.tr())

// ❌ INCORRECT - Hard-coded strings
Text('Welcome to the app')
context.showSnackBar('Success!')
```

### Translation Structure

```yaml
# assets/translations/en.json
{
  "welcome": "Welcome to the app",
  "login": "Login",
  "email": "Email",
  "password": "Password",
  "errors": {
    "invalid_email": "Please enter a valid email",
    "password_short": "Password must be at least 8 characters"
  },
  "messages": {
    "success_login": "Login successful",
    "error_network": "No internet connection"
  }
}
```

---

## 13. Advanced Tips & Patterns

### MVC-like View Pattern (Page Structure)

```dart
// Feature page using _View pattern (separates concerns)
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<HomeBloc>(),
      child: const _HomeView(),
    );
  }
}

class _HomeView extends StatefulWidget {
  const _HomeView();

  @override
  State<_HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<_HomeView> {
  @override
  void initState() {
    super.initState();
    context.read<HomeBloc>().add(const HomeFetched());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading) return const AppLoading();
          if (state.errorMessage != null) {
            return AppError(message: state.errorMessage!);
          }
          return _buildContent(state);
        },
      ),
    );
  }

  Widget _buildContent(HomeState state) {
    return ListView.builder(
      itemCount: state.items.length,
      itemBuilder: (_, index) => ItemTile(item: state.items[index]),
    );
  }
}
```

### Preventing Unnecessary Rebuilds

```dart
// ✅ Use BlocSelector for specific fields
BlocSelector<HomeBloC, HomeState, List<Item>>(
  selector: (state) => state.items,
  builder: (context, items) => ListView(children: items),
)

// ✅ Use BlocBuilder with buildWhen
BlocBuilder<HomeBloc, HomeState>(
  buildWhen: (prev, curr) => 
    prev.items != curr.items ||
    prev.isLoading != curr.isLoading,
  builder: (context, state) => ...,
)

// ✅ Use BlocListener for one-time effects
BlocListener<HomeBloc, HomeState>(
  listenWhen: (prev, curr) => prev.items.length != curr.items.length,
  listener: (context, state) {
    context.showSnackBar('New items added');
  },
  child: child,
)
```

### Handling Optional Fields

```dart
// ✅ Use nullable types clearly
final String? errorMessage;

// ✅ Check before using
if (state.user != null) {
  print(state.user!.name);
}

// ✅ Use optional chaining
final email = state.user?.email;

// ✅ Use ?? for defaults
final name = state.user?.name ?? 'Anonymous';
```

---

## 14. Common Pitfalls & How to Avoid Them

### ❌ Anti-Pattern: Direct API Calls in UI

```dart
// ❌ WRONG
class UserListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Dio().get('/users'),  // API call in UI!
      builder: (context, snapshot) => ...,
    );
  }
}

// ✅ CORRECT
class UserListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<UserListBloc>()..add(UsersFetched()),
      child: const _UserListView(),
    );
  }
}
```

### ❌ Anti-Pattern: setState for Complex State

```dart
// ❌ WRONG - Using StatefulWidget for complex state
class LoginPage extends StatefulWidget { ... }

class _LoginPageState extends State<LoginPage> {
  String email = '';
  String password = '';
  bool isLoading = false;
  String? errorMessage;

  void _login() {
    setState(() => isLoading = true);
    // ...
  }
}

// ✅ CORRECT - Use BLoC
class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<LoginBloc>(),
      child: const _LoginView(),
    );
  }
}
```

### ❌ Anti-Pattern: Business Logic in Widgets

```dart
// ❌ WRONG - Logic in widget
class CheckoutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Button(
      onPressed: () {
        // Validation logic in widget!
        if (email.isEmpty) showError('Email required');
        if (cart.isEmpty) showError('Cart empty');
        final total = cart.fold<double>(
          0,
          (sum, item) => sum + item.price,
        );
        submitOrder(total);
      },
    );
  }
}

// ✅ CORRECT - Logic in UseCase/BLoC
class CheckoutBloc extends Bloc<CheckoutEvent, CheckoutState> {
  final ValidateCartUseCase _validateCart;
  final PlaceOrderUseCase _placeOrder;

  CheckoutBloc({...}) : super(...) {
    on<CheckoutSubmitted>(_onSubmitted);
  }

  Future<void> _onSubmitted(...) async {
    final validationResult = _validateCart(...);
    if (!validationResult.isValid) {
      emit(state.copyWith(error: validationResult.error));
      return;
    }
    // Proceed with order...
  }
}
```

### ❌ Anti-Pattern: Importing Across Layers

```dart
// ❌ WRONG - Presentation imports Data
import 'package:[YOUR_PROJECT_NAME]/features/auth/data/models/user_model.dart';

// ✅ CORRECT - Import domain entities
import 'package:[YOUR_PROJECT_NAME]/features/auth/domain/entities/user.dart';
```

### ❌ Anti-Pattern: Global Variables

```dart
// ❌ WRONG
final authBloc = AuthBloc();  // Memory leak, unmanaged lifecycle

// ✅ CORRECT - Use get_it
final authBloc = sl<AuthBloc>();
```

---

## 15. Performance Optimization

### Image Caching

```dart
// ✅ Use cached_network_image
AppImage(
  imageUrl: 'https://...',
  cacheKey: 'user_avatar_123',  // Unique cache key
  memCacheWidth: 300,           // Cache in memory
  memCacheHeight: 300,
)
```

### List Performance

```dart
// ✅ Use ListView.builder (lazy loading)
ListView.builder(
  itemCount: items.length,
  itemBuilder: (context, index) => ItemTile(item: items[index]),
)

// ❌ WRONG - Builds all items at once
ListView(
  children: items.map((item) => ItemTile(item: item)).toList(),
)
```

### Bloc Optimization

```dart
// ✅ Only rebuild when necessary
BlocBuilder<HomeBloc, HomeState>(
  buildWhen: (prev, curr) =>
    prev.items != curr.items,  // Only rebuild if items changed
  builder: (context, state) => ...,
)

// ✅ Extract smaller BlocBuilders
BlocBuilder<HomeBloc, HomeState>(
  selector: (state) => state.isLoading,
  builder: (context, isLoading) => LoadingIndicator(isLoading: isLoading),
)
```

---

## 16. Pre-Submission Checklist

### For ANY Generated Code

- [ ] ✅ Imports `core_imports.dart` and `packages_imports.dart`
- [ ] ✅ Uses `context.theme.colorScheme` (no hard-coded colors)
- [ ] ✅ Uses `'key'.tr()` for all user-facing strings
- [ ] ✅ Uses responsive units (`.w`, `.h`, `.sp`, `.r`)
- [ ] ✅ Uses `const` constructors where possible
- [ ] ✅ Follows naming conventions strictly

### For Features (Full Layer Implementation)

- [ ] ✅ Domain layer: Entities, Repository interfaces, UseCases
- [ ] ✅ Data layer: Models, DataSources, Repository implementations
- [ ] ✅ Presentation layer: Pages, Widgets, BLoCs
- [ ] ✅ Repository interfaces in domain, implementations in data
- [ ] ✅ UseCase calls repository interface (not implementation)
- [ ] ✅ BLoC events/states are immutable + Equatable
- [ ] ✅ Pages use _View pattern with BlocProvider

### For UI Components

- [ ] ✅ Uses `BlocBuilder` with `buildWhen` optimization
- [ ] ✅ Uses `BlocListener` for navigation/dialogs/snackbars
- [ ] ✅ Handles loading states
- [ ] ✅ Handles error states + error messages
- [ ] ✅ Handles empty states
- [ ] ✅ Uses shared widgets from core (not raw Flutter widgets)
- [ ] ✅ Responsive layout (no fixed sizes)

### For Data Layer

- [ ] ✅ DataSource has abstract interface + implementation
- [ ] ✅ Returns Either<Failure, Data> from repositories
- [ ] ✅ Proper exception handling (catch specific exceptions)
- [ ] ✅ Models extend entities (toEntity() method)
- [ ] ✅ fromJson/toJson properly implemented

### For Testing

- [ ] ✅ Unit tests for UseCases
- [ ] ✅ Unit tests for Repositories
- [ ] ✅ BLoC tests using blocTest
- [ ] ✅ Widget tests for critical Pages
- [ ] ✅ 80%+ code coverage

---

## 17. Directory Structure Checklist

Ensure your project follows this exact structure:

```
lib/
├── main.dart
├── core/
│   ├── config/
│   │   └── app_config.dart
│   ├── extensions/
│   │   └── context_extension.dart
│   ├── imports/
│   │   ├── core_imports.dart
│   │   └── packages_imports.dart
│   ├── injection/
│   │   └── injection.dart
│   ├── routing/
│   │   ├── app_router.dart
│   │   └── app_routes.dart
│   ├── services/
│   │   ├── dio_client.dart
│   │   ├── notification_service.dart
│   │   └── location_service.dart
│   ├── shared/
│   │   ├── widgets/
│   │   │   ├── app_button.dart
│   │   │   ├── app_text_field.dart
│   │   │   └── ...
│   │   ├── enums/
│   │   │   └── button_variant.dart
│   │   └── helpers/
│   │       └── validators.dart
│   ├── theme/
│   │   ├── app_theme.dart
│   │   ├── color_scheme.dart
│   │   └── design_tokens.dart
│   ├── utils/
│   │   └── constants.dart
│   ├── error/
│   │   ├── failures.dart
│   │   └── exceptions.dart
│   └── GLOBAL_RULES.md
└── features/
    ├── auth/
    │   ├── data/
    │   │   ├── datasources/
    │   │   │   └── auth_remote_data_source.dart
    │   │   ├── models/
    │   │   │   └── user_model.dart
    │   │   └── repositories/
    │   │       └── auth_repository_impl.dart
    │   ├── domain/
    │   │   ├── entities/
    │   │   │   └── user.dart
    │   │   ├── repositories/
    │   │   │   └── auth_repository.dart
    │   │   └── usecases/
    │   │       ├── login_use_case.dart
    │   │       └── signup_use_case.dart
    │   └── presentation/
    │       ├── bloc/
    │       │   ├── auth_bloc.dart
    │       │   ├── auth_event.dart
    │       │   └── auth_state.dart
    │       ├── pages/
    │       │   └── login_page.dart
    │       └── widgets/
    │           └── login_form.dart
    ├── home/
    │   ├── data/
    │   ├── domain/
    │   └── presentation/
    └── ...more features
```

---

## 18. Quick Reference Card

### Core Extensions
```dart
// Theme
context.theme / context.theme.colorScheme / context.designTokens

// Screen
context.width / context.height / context.safeArea / context.isDarkMode

// Navigation
context.go() / context.push() / context.pop()

// Overlays
context.showSnackBar() / context.showAppDialog() / context.showAppBottomSheet()
```

### Responsive Sizing
```dart
100.w  // Width percentage    |  14.sp  // Font size
20.h   // Height percentage   |  12.r   // Border radius
```

### BLoC Pattern
```dart
Event → BLoC.on() → UseCase → Repository → DataSource → emit(State)
```

### Dependency Injection
```dart
lazySingleton → Once per app lifetime
factory → New instance per call
```

### Error Handling
```dart
Future<Either<Failure, Success>> method()
result.fold((failure) => handle(), (data) => use())
```

---

## ✅ Final Reminders

1. **ALWAYS start with imports** - barrel imports are non-negotiable
2. **Respect layer boundaries** - presentation can't import data
3. **Use extensions** - never access theme directly
4. **Responsive design** - no magic numbers
5. **Localization** - every string should be translated
6. **Error handling** - always handle failures
7. **Type safety** - use strong typing, avoid `dynamic`
8. **Testing** - test business logic, not UI
9. **Naming conventions** - follow them religiously
10. **DRY principle** - extract common patterns to core

---

**Last Updated**: April 27, 2026  
**Version**: 2.0 (Universal)  
**Applies To**: All Flutter Projects  
**Follow strictly for consistent, maintainable code** ✨
