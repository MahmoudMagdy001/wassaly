import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/core/services/notification_service.dart';
import 'package:wassaly/features/app_reviews/domain/usecases/add_app_review_usecase.dart';
import 'package:wassaly/features/app_reviews/domain/usecases/get_app_reviews_usecase.dart';
import 'package:wassaly/features/app_reviews/domain/usecases/update_app_review_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/clear_user_session_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/forget_send_otp_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/forget_verify_otp_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_cached_user_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_profile_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/get_saved_token_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/google_login_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/logout_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/register_fcm_token_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/resend_otp_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/reset_password_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/signup_usecase.dart';
import 'package:wassaly/features/auth/domain/usecases/verify_otp_usecase.dart';
import 'package:wassaly/features/brands/domain/usecases/get_brand_products_usecase.dart';
import 'package:wassaly/features/brands/domain/usecases/get_brands_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/add_to_cart_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/apply_coupon_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/get_cart_items_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/get_governorates_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/get_user_addresses_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/get_user_data_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/place_order_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/remove_from_cart_usecase.dart';
import 'package:wassaly/features/cart/domain/usecases/update_quantity_usecase.dart';
import 'package:wassaly/features/category/domain/usecases/get_category_detail_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/get_favorites_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/get_service_favorites_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/sync_pending_favorites_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/toggle_favorite_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/toggle_service_favorite_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_banners_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_popular_services_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_products_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/delete_all_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/delete_notification_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notification_status_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/get_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/mark_as_read_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/read_all_notifications_usecase.dart';
import 'package:wassaly/features/notifications/domain/usecases/toggle_notification_usecase.dart';
import 'package:wassaly/features/offers/domain/usecases/get_offers_use_case.dart';
import 'package:wassaly/features/orders/domain/usecases/cancel_order_usecase.dart';
import 'package:wassaly/features/orders/domain/usecases/delete_order_usecase.dart';
import 'package:wassaly/features/orders/domain/usecases/get_order_details_usecase.dart';
import 'package:wassaly/features/orders/domain/usecases/get_orders_usecase.dart';
import 'package:wassaly/features/orders/domain/usecases/update_order_usecase.dart';
import 'package:wassaly/features/product_details/domain/usecases/create_product_review_usecase.dart';
import 'package:wassaly/features/product_details/domain/usecases/get_product_details_usecase.dart';
import 'package:wassaly/features/product_details/domain/usecases/update_product_review_usecase.dart';
import 'package:wassaly/features/products_filter/domain/usecases/get_filtered_products_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/create_address_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/delete_account_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/delete_address_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_addresses_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_centers_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_governorates_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/logout_all_devices_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/update_address_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/update_profile_usecase.dart';
import 'package:wassaly/features/provider_details/domain/usecases/get_provider_details_usecase.dart';
import 'package:wassaly/features/search/domain/usecases/search_products_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/accept_reschedule_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/cancel_booking_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/create_booking_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/delete_booking_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/get_my_bookings_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/propose_reschedule_usecase.dart';
import 'package:wassaly/features/service_booking/domain/usecases/update_booking_usecase.dart';
import 'package:wassaly/features/service_details/domain/usecases/create_service_review_usecase.dart';
import 'package:wassaly/features/service_details/domain/usecases/get_service_details_usecase.dart';
import 'package:wassaly/features/service_details/domain/usecases/toggle_service_favorite_usecase.dart'
    as detail_favorite;
import 'package:wassaly/features/service_details/domain/usecases/update_service_review_usecase.dart';
import 'package:wassaly/features/sub_category/domain/usecases/get_sub_category_detail_usecase.dart';

void initUseCaseDependencies() {
  // UseCases - Auth
  sl
    ..registerLazySingleton(() => LoginUseCase(sl()))
    ..registerLazySingleton(() => RegisterFcmTokenUseCase(sl()))
    ..registerLazySingleton(() => GoogleLoginUseCase(sl()))
    ..registerLazySingleton(() => GetProfileUseCase(sl()))
    ..registerLazySingleton(() => GetCachedUserUseCase(sl()))
    ..registerLazySingleton(() => GetSavedTokenUseCase(sl()))
    ..registerLazySingleton(() => LogoutUseCase(sl()))
    ..registerLazySingleton(() => SignupUseCase(sl()))
    ..registerLazySingleton(() => VerifyOtpUseCase(sl()))
    ..registerLazySingleton(() => ResendOtpUseCase(sl()))
    ..registerLazySingleton(() => ForgetSendOtpUseCase(sl()))
    ..registerLazySingleton(() => ForgetVerifyOtpUseCase(sl()))
    ..registerLazySingleton(() => ResetPasswordUseCase(sl()))

    // UseCases - Profile
    ..registerLazySingleton(() => UpdateProfileUseCase(sl()))
    ..registerLazySingleton(() => LogoutAllDevicesUseCase(sl()))
    ..registerLazySingleton(() => DeleteAccountUseCase(sl()))
    ..registerLazySingleton(() => GetAddressesUseCase(sl()))
    ..registerLazySingleton(() => CreateAddressUseCase(sl()))
    ..registerLazySingleton(() => UpdateAddressUseCase(sl()))
    ..registerLazySingleton(() => DeleteAddressUseCase(sl()))
    ..registerLazySingleton(() => GetGovernoratesUseCase(sl()))
    ..registerLazySingleton(() => GetCentersUseCase(sl()))

    // UseCases - Home
    ..registerLazySingleton(() => GetBannersUseCase(sl()))
    ..registerLazySingleton(() => GetCategoriesUseCase(sl()))
    ..registerLazySingleton(() => GetPopularServicesUseCase(sl()))
    ..registerLazySingleton(() => GetProductsUseCase(sl()))

    // UseCases - SubCategory
    ..registerLazySingleton(() => GetSubCategoryDetailUseCase(sl()))

    // UseCases - Category
    ..registerLazySingleton(() => GetCategoryDetailUseCase(sl()))

    // UseCases - Search
    ..registerLazySingleton(() => SearchProductsUseCase(sl()))

    // UseCases - Favorite
    ..registerLazySingleton(() => GetFavoritesUseCase(sl()))
    ..registerLazySingleton(() => GetServiceFavoritesUseCase(sl()))
    ..registerLazySingleton(() => ToggleFavoriteUseCase(sl()))
    ..registerLazySingleton(() => ToggleServiceFavoriteUseCase(sl()))
    ..registerLazySingleton(() => SyncPendingFavoritesUseCase(sl()))
    ..registerLazySingleton(() => GetProductDetailsUseCase(sl()))
    ..registerLazySingleton(() => CreateProductReviewUseCase(sl()))
    ..registerLazySingleton(() => UpdateProductReviewUseCase(sl()))

    // UseCases - Cart
    ..registerLazySingleton(() => GetCartItemsUseCase(sl()))
    ..registerLazySingleton(() => AddToCartUseCase(sl()))
    ..registerLazySingleton(() => RemoveFromCartUseCase(sl()))
    ..registerLazySingleton(() => UpdateQuantityUseCase(sl()))
    ..registerLazySingleton(() => GetUserDataUseCase(sl()))
    ..registerLazySingleton(() => GetUserAddressesUseCase(sl()))
    ..registerLazySingleton(() => GetCartGovernoratesUseCase(sl()))
    ..registerLazySingleton(() => ApplyCouponUseCase(sl()))
    ..registerLazySingleton(() => PlaceOrderUseCase(sl()))

    // UseCases - Auth (new)
    ..registerLazySingleton(() => ClearUserSessionUseCase(sl()))

    // UseCases - Orders
    ..registerLazySingleton(() => GetOrdersUseCase(sl()))
    ..registerLazySingleton(() => GetOrderDetailsUseCase(sl()))
    ..registerLazySingleton(() => CancelOrderUseCase(sl()))
    ..registerLazySingleton(() => UpdateOrderUseCase(sl()))
    ..registerLazySingleton(() => DeleteOrderUseCase(sl()))

    // UseCases - Service Details
    ..registerLazySingleton(() => GetServiceDetailsUseCase(sl()))
    ..registerLazySingleton(
      () => detail_favorite.ToggleServiceFavoriteUseCase(sl()),
    )
    ..registerLazySingleton(() => CreateServiceReviewUseCase(sl()))
    ..registerLazySingleton(() => UpdateServiceReviewUseCase(sl()))

    // UseCases - Service Booking
    ..registerLazySingleton(() => CreateBookingUseCase(sl()))
    ..registerLazySingleton(() => GetMyBookingsUseCase(sl()))
    ..registerLazySingleton(() => UpdateBookingUseCase(sl()))
    ..registerLazySingleton(() => CancelBookingUseCase(sl()))
    ..registerLazySingleton(() => DeleteBookingUseCase(sl()))
    ..registerLazySingleton(() => AcceptRescheduleUseCase(sl()))
    ..registerLazySingleton(() => ProposeRescheduleUseCase(sl()))

    // UseCases - Provider Details
    ..registerLazySingleton(() => GetProviderDetailsUseCase(sl()))

    // UseCases  // Brands
    ..registerLazySingleton(() => GetBrandsUseCase(sl()))
    ..registerLazySingleton(() => GetBrandProductsUseCase(sl()))

    // Offers
    ..registerLazySingleton(() => GetOffersUseCase(sl()))

    // App Reviews
    ..registerLazySingleton(() => GetAppReviewsUseCase(sl()))
    ..registerLazySingleton(() => AddAppReviewUseCase(sl()))
    ..registerLazySingleton(() => UpdateAppReviewUseCase(sl()))

    // Products Filter
    ..registerLazySingleton(() => GetFilteredProductsUseCase(sl()))

    // Notifications
    ..registerLazySingleton(() => GetNotificationsUseCase(sl()))
    ..registerLazySingleton(() => MarkAsReadUseCase(sl()))
    ..registerLazySingleton(() => ReadAllNotificationsUseCase(sl()))
    ..registerLazySingleton(() => DeleteNotificationUseCase(sl()))
    ..registerLazySingleton(() => DeleteAllNotificationsUseCase(sl()))
    ..registerLazySingleton(() => GetNotificationStatusUseCase(sl()))
    ..registerLazySingleton(() => ToggleNotificationUseCase(sl()))

    // Services
    ..registerLazySingleton(() => NotificationService.instance);

  // FCM Token Service (singleton, initialized with use case)
  FcmTokenService.instance.useCase = sl<RegisterFcmTokenUseCase>();
}
