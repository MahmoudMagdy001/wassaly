# Wassaly — خدمة وصلني

**Wassaly** is a Flutter mobile application for service booking and e-commerce, connecting users with service providers and products in a multi-vendor marketplace.

## ✨ Features

- **Authentication** — Login, registration, and OTP verification
- **Home** — Landing screen with curated content
- **Categories & Brands** — Browse by categories, sub-categories, and brands
- **Products** — Product details with filtering & sorting
- **Services** — Service details and booking flow
- **Providers** — View provider details and offerings
- **Cart & Orders** — Shopping cart management and order history
- **Favorites** — Wishlist / saved items
- **Search** — Full-text search across products and services
- **Offers** — Deals and promotions
- **Profile** — User profile and settings
- **Reviews** — App ratings and reviews
- **Dark/Light Theme** — Material 3 theming support
- **Arabic & English** — Full bilingual localization

## 🏗️ Architecture

| Layer | Technology |
| **State Management** | flutter_bloc + fpdart (functional Either) |
| **Dependency Injection** | get_it (service locator) |
| **Routing** | go_router (declarative) |
| **Networking** | Dio with interceptors |
| **Local Storage** | Hive, SharedPreferences, flutter_secure_storage |
| **Localization** | intl (Arabic & English) |
| **Theme** | Material 3 — Light & Dark modes |

### Clean Architecture (3-Layer)

Presentation → Domain → Data

- Each feature is divided into `data/`, `domain/`, and `presentation/` layers
- BLoC pattern for state management
- Repository pattern for data access
- Functional error handling with `Either<Failure, T>`

## 📁 Project Structure

lib/
├── core/               # Shared infrastructure
│   ├── config/         # App configuration
│   ├── extensions/     # Context extensions
│   ├── i18n/           # Localization setup
│   ├── imports/        # Barrel files
│   ├── injection/      # DI container
│   ├── routing/        # Route definitions
│   ├── services/       # HTTP, Storage, Hive services
│   ├── shared/         # Reusable widgets
│   ├── theme/          # Light & Dark themes
│   └── utils/          # Helpers
├── features/           # Feature modules (18 features)
│   ├── auth/
│   ├── home/
│   ├── category/
│   ├── sub_category/
│   ├── brands/
│   ├── product_details/
│   ├── products_filter/
│   ├── service_details/
│   ├── service_booking/
│   ├── provider_details/
│   ├── cart/
│   ├── orders/
│   ├── favorite/
│   ├── search/
│   ├── offers/
│   ├── profile/
│   ├── app_reviews/
│   └── main_layout/
├── app.dart            # App entry widget
└── main.dart           # App entry point

## 🚀 Getting Started

```bash
# Install dependencies
flutter pub get

# Run code generation (if needed)
dart run build_runner build

# Run the app
flutter run
```

## 🛠️ Tech Stack

- **Language:** Dart 3.5+
- **Framework:** Flutter
- **State Management:** flutter_bloc 9.x
- **Navigation:** go_router 17.x
- **Networking:** Dio 5.x
- **Storage:** Hive + SharedPreferences + flutter_secure_storage
- **Responsive UI:** flutter_screenutil
- **Animations:** flutter_animate
- **Font:** Cairo (Arabic-optimized)
