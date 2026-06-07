# 🚀 Wassaly - Smart Planning & Goods Delivery App

[![Flutter](https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white)](https://flutter.dev)
[![Dart](https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white)](https://dart.dev)
[![Clean Architecture](https://img.shields.io/badge/Architecture-Clean-brightgreen?style=for-the-badge)](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
[![BLoC](https://img.shields.io/badge/State--Management-BLoC-blue?style=for-the-badge)](https://bloclibrary.dev)

**Wassaly** is a premium, high-performance mobile application built with Flutter, designed to provide a seamless experience for planning, discovery, and ordering goods or services. With a focus on responsiveness, modern UI/UX, and robust architecture, Wassaly delivers a state-of-the-art solution for modern users.

---

## ✨ Key Features

The application is structured into modular features, ensuring scalability and maintainability:

-   **🔑 Advanced Auth System**: Secure multi-factor authentication, including OTP verification and profile management.
-   **🛍️ E-Commerce Excellence**: Comprehensive product catalog with detailed views, persistent shopping cart, and flexible filtering.
-   **📅 Service Booking**: Efficient scheduling and management of professional services.
-   **📦 Order Lifecycle**: Real-time order tracking, history, and status updates.
-   **🔍 Intelligent Search**: Global search functionality across products, brands, and categories.
-   **🔔 Smart Notifications**: Integrated push notifications using Firebase and Awesome Notifications.
-   **⭐ User Engagement**: Robust review system and favorites management (wishlist).
-   **👤 Profile & Customization**: Personalized user profiles, settings, and address management.

---

## 🛠️ Technology Stack

Wassaly leverages the latest and greatest in the Flutter ecosystem:

-   **State Management**: `flutter_bloc` with a custom `SafeBloc` implementation for robust error handling.
-   **Navigation**: `go_router` for declarative and deep-linkable routing.
-   **Networking**: `dio` with custom interceptors and `pretty_dio_logger` for debugging.
-   **Dependency Injection**: `get_it` for efficient service location.
-   **Local Storage**: `shared_preferences`, `flutter_secure_storage`, and `hive` for high-performance data persistence.
-   **UI/UX**: 
    -   `flutter_screenutil` for pixel-perfect responsiveness.
    -   `skeletonizer` for beautiful shimmer loading states.
    -   `flutter_animate` for smooth, modern animations.
    -   `cairo` font support for premium typography.
-   **Functional Programming**: `fpdart` (`Either`) for predictable error handling.
-   **Backend Services**: Firebase Core & Messaging for real-time capabilities.

---

## 🏗️ Architecture: The 3-Layer Rule

Wassaly follows a strict **Clean Architecture** pattern to ensure independence of UI, business logic, and data sources.

### 1. Presentation Layer
-   **BLoC**: Handles UI state and user interactions.
-   **Pages & Widgets**: Uses premium shared components (`AppButton`, `AppTextField`, `AppUnifiedCard`).
-   **Theme**: Centralized color scheme and typography.

### 2. Domain Layer (Pure Dart)
-   **Entities**: Pure data models.
-   **Repositories (Interfaces)**: Defined contracts for data operations.
-   **Usecases**: Specific business logic units.

### 3. Data Layer
-   **Models**: JSON parsing and data transformation.
-   **Datasources**: API calls (Dio) and local storage (Hive).
-   **Repositories (Implementations)**: Concrete implementation of domain contracts.

---

## 📂 Directory Structure

```bash
lib/features/feature_name/
├── data/
│   ├── datasources/   # API & Local Data
│   ├── models/        # DTOs
│   └── repositories/  # Implementation
├── domain/
│   ├── entities/      # Business Objects
│   ├── repositories/  # Interfaces
│   └── usecases/      # Actions
└── presentation/
    ├── bloc/          # State & Logic
    ├── pages/         # UI Screens
    └── widgets/       # Components
```

---

## 🚀 Getting Started

1.  **Clone the Repository**
    ```bash
    git clone https://github.com/MahmoudMagdy001/wassaly.git
    ```
2.  **Install Dependencies**
    ```bash
    flutter pub get
    ```
3.  **Environment Setup**
    Ensure `.env` file is present in the root directory.
4.  **Run the Project**
    ```bash
    flutter run
    ```

---

## � Development Guidelines

-   **Responsiveness**: Always use `.w`, `.h`, `.sp`, and `.r` from `flutter_screenutil`.
-   **Localisation**: Use `context.l10n` for all user-facing strings.
-   **Theming**: Access colors via `context.colors` and text via `context.textTheme`.
-   **Performance**: Consistent 60fps achieved through lazy loading, image caching, and isolated rebuilds.

---

<p align="center">
  Made with ❤️ for a better User Experience.
</p>
