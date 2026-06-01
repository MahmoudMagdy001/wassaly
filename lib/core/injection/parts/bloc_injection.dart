import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/presentation/bloc/forgot_password/forgot_password_bloc.dart';
import 'package:wassaly/features/auth/presentation/bloc/login/login_bloc.dart';
import 'package:wassaly/features/auth/presentation/bloc/otp_verification/otp_verification_bloc.dart';
import 'package:wassaly/features/auth/presentation/bloc/reset_password/reset_password_bloc.dart';
import 'package:wassaly/features/auth/presentation/bloc/session/session_bloc.dart';
import 'package:wassaly/features/auth/presentation/bloc/signup/signup_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/notifications/presentation/bloc/notifications_bloc.dart';
import 'package:wassaly/features/sub_category/presentation/bloc/sub_category_bloc.dart';

import '../../../features/app_reviews/presentation/bloc/app_reviews_bloc.dart';
import '../../../features/auth/presentation/bloc/google_login/google_login_bloc.dart';
import '../../../features/brands/presentation/bloc/brands_bloc.dart';
import '../../../features/cart/presentation/bloc/cart_bloc.dart';
import '../../../features/cart/presentation/bloc/checkout/checkout_bloc.dart';
import '../../../features/category/presentation/bloc/category_bloc.dart';
import '../../../features/home/presentation/bloc/home_bloc.dart';
import '../../../features/offers/presentation/bloc/offers_bloc.dart';
import '../../../features/orders/presentation/bloc/order_detail/order_detail_bloc.dart';
import '../../../features/orders/presentation/bloc/orders_bloc.dart';
import '../../../features/product_details/presentation/bloc/product_details_bloc.dart';
import '../../../features/products_filter/presentation/bloc/products_filter_bloc.dart';
import '../../../features/profile/presentation/bloc/profile/profile_bloc.dart';
import '../../../features/profile/presentation/bloc/settings/settings_bloc.dart';
import '../../../features/provider_details/presentation/bloc/provider_details_bloc.dart';
import '../../../features/search/presentation/bloc/search_bloc.dart';
import '../../../features/service_booking/presentation/bloc/booking_detail/booking_detail_bloc.dart';
import '../../../features/service_booking/presentation/bloc/service_booking_bloc.dart';
import '../../../features/service_details/presentation/bloc/service_details_bloc.dart';

void initBlocDependencies() {
  sl.registerLazySingleton(() => SessionBloc(
        loginUseCase: sl(),
        getSavedTokenUseCase: sl(),
        getProfileUseCase: sl(),
        getCachedUserUseCase: sl(),
        logoutUseCase: sl(),
        clearUserSessionUseCase: sl(),
      ));
  sl.registerFactory(() => LoginBloc(
        loginUseCase: sl(),
        resendOtpUseCase: sl(),
      ));
  sl.registerFactory(() => GoogleLoginBloc(
        googleLoginUseCase: sl(),
      ));
  sl.registerFactory(() => SignupBloc(
        signupUseCase: sl(),
      ));
  sl.registerFactory(() => ForgotPasswordBloc(forgetSendOtpUseCase: sl()));
  sl.registerLazySingleton(() => ProfileBloc(
        getCachedUserUseCase: sl(),
        getProfileUseCase: sl(),
        updateProfileUseCase: sl(),
        logoutUseCase: sl(),
        logoutAllDevicesUseCase: sl(),
        deleteAccountUseCase: sl(),
        getAddressesUseCase: sl(),
        createAddressUseCase: sl(),
        getGovernoratesUseCase: sl(),
        getCentersUseCase: sl(),
        updateAddressUseCase: sl(),
        deleteAddressUseCase: sl(),
        sessionBloc: sl(),
      ));
  sl.registerLazySingleton(() => SettingsBloc(
        storage: StorageService.instance,
      ));
  sl.registerFactory(() => HomeBloc(
        getBannersUseCase: sl(),
        getCategoriesUseCase: sl(),
        getPopularServicesUseCase: sl(),
        getProductsUseCase: sl(),
      ));
  sl.registerFactory(() => SubCategoryBloc(
        getSubCategoryDetailUseCase: sl(),
      ));
  sl.registerFactory(() => CategoryBloc(
        getCategoryDetailUseCase: sl(),
      ));
  sl.registerFactory(() => SearchBloc(
        searchProductsUseCase: sl(),
      ));
  sl.registerLazySingleton(() => FavoriteBloc(
        sl(),
        sl(),
        sl(),
        sl(),
      ));
  sl.registerFactory(() => ProductDetailsBloc(
        getProductDetailsUseCase: sl(),
        getSubCategoryDetailUseCase: sl(),
        createProductReviewUseCase: sl(),
        updateProductReviewUseCase: sl(),
      ));
  sl.registerLazySingleton(() => CartBloc(
        getCartItemsUseCase: sl(),
        addToCartUseCase: sl(),
        removeFromCartUseCase: sl(),
        updateQuantityUseCase: sl(),
      ));

  sl.registerLazySingleton(() => OrdersBloc(
        getOrdersUseCase: sl(),
        getMyBookingsUseCase: sl(),
      ));

  sl.registerFactory(() => OrderDetailBloc(
        getOrderDetailsUseCase: sl(),
        cancelOrderUseCase: sl(),
        updateOrderUseCase: sl(),
        deleteOrderUseCase: sl(),
      ));

  sl.registerFactory(() => CheckoutBloc(
        placeOrderUseCase: sl(),
        applyCouponUseCase: sl(),
        getGovernoratesUseCase: sl(),
        getCentersUseCase: sl(),
        getUserDataUseCase: sl(),
        getUserAddressesUseCase: sl(),
        ordersBloc: sl(),
      ));

  sl.registerFactoryParam<OtpVerificationBloc, String, VerificationType>(
    (email, verificationType) => OtpVerificationBloc(
      email: email,
      verificationType: verificationType,
      verifyOtpUseCase: sl(),
      forgetVerifyOtpUseCase: sl(),
      resendOtpUseCase: sl(),
    ),
  );
  sl.registerFactoryParam<ResetPasswordBloc, String, String>(
    (email, token) => ResetPasswordBloc(
      email: email,
      token: token,
      resetPasswordUseCase: sl(),
    ),
  );

  // Service Details
  sl.registerFactory(() => ServiceDetailsBloc(
        getServiceDetailsUseCase: sl(),
        toggleServiceFavoriteUseCase: sl(),
        createServiceReviewUseCase: sl(),
        updateServiceReviewUseCase: sl(),
      ));

  // Service Booking
  sl.registerFactory(() => ServiceBookingBloc(
        createBookingUseCase: sl(),
        getGovernoratesUseCase: sl(),
        getCentersUseCase: sl(),
        getUserDataUseCase: sl(),
        getUserAddressesUseCase: sl(),
        ordersBloc: sl(),
      ));

  sl.registerFactory(() => BookingDetailBloc(
        cancelBookingUseCase: sl(),
        updateBookingUseCase: sl(),
        deleteBookingUseCase: sl(),
        acceptRescheduleUseCase: sl(),
        proposeRescheduleUseCase: sl(),
        ordersBloc: sl(),
      ));

  sl.registerFactory(() => ProviderDetailsBloc(
        getProviderDetailsUseCase: sl(),
      ));

  // Brands
  sl.registerFactory(() => BrandsBloc(
        sl(),
        sl(),
      ));

  // Offers
  sl.registerFactory(() => OffersBloc(
        sl(),
      ));

  // App Reviews
  sl.registerFactory(() => AppReviewsBloc(
        sl(),
        sl(),
        sl(),
        sl(),
      ));

  // Products Filter
  sl.registerFactory(() => ProductsFilterBloc(
        getFilteredProductsUseCase: sl(),
        getCategoriesUseCase: sl(),
      ));

  sl.registerLazySingleton(() => NotificationsBloc(
        getNotificationsUseCase: sl(),
        markAsReadUseCase: sl(),
        deleteNotificationUseCase: sl(),
        deleteAllNotificationsUseCase: sl(),
        readAllNotificationsUseCase: sl(),
        getNotificationStatusUseCase: sl(),
        toggleNotificationUseCase: sl(),
      ));
}
