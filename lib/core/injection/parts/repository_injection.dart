import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/data/repositories/app_reviews_repository_impl.dart';
import 'package:wassaly/features/app_reviews/domain/repositories/app_reviews_repository.dart';
import 'package:wassaly/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:wassaly/features/auth/data/repositories/fcm_token_repository_impl.dart';
import 'package:wassaly/features/auth/domain/repositories/auth_repository.dart';
import 'package:wassaly/features/auth/domain/repositories/fcm_token_repository.dart';
import 'package:wassaly/features/brands/data/repositories/brands_repository_impl.dart';
import 'package:wassaly/features/brands/domain/repositories/brands_repository.dart';
import 'package:wassaly/features/cart/data/repositories/cart_repository_impl.dart';
import 'package:wassaly/features/cart/domain/repositories/cart_repository.dart';
import 'package:wassaly/features/category/data/repositories/category_repository_impl.dart';
import 'package:wassaly/features/category/domain/repositories/category_repository.dart';
import 'package:wassaly/features/favorite/data/repositories/favorite_repository_impl.dart';
import 'package:wassaly/features/favorite/domain/repositories/favorite_repository.dart';
import 'package:wassaly/features/home/data/repositories/home_repository_impl.dart';
import 'package:wassaly/features/home/domain/repositories/home_repository.dart';
import 'package:wassaly/features/notifications/data/repositories/notification_repository_impl.dart';
import 'package:wassaly/features/notifications/domain/repositories/notification_repository.dart';
import 'package:wassaly/features/offers/data/repositories/offers_repository_impl.dart';
import 'package:wassaly/features/offers/domain/repositories/offers_repository.dart';
import 'package:wassaly/features/orders/data/repositories/orders_repository_impl.dart';
import 'package:wassaly/features/orders/domain/repositories/orders_repository.dart';
import 'package:wassaly/features/product_details/data/repositories/product_details_repository_impl.dart';
import 'package:wassaly/features/product_details/domain/repositories/product_details_repository.dart';
import 'package:wassaly/features/products_filter/data/repositories/products_filter_repository_impl.dart';
import 'package:wassaly/features/products_filter/domain/repositories/products_filter_repository.dart';
import 'package:wassaly/features/profile/data/repositories/profile_repository_impl.dart';
import 'package:wassaly/features/profile/domain/repositories/profile_repository.dart';
import 'package:wassaly/features/provider_details/data/repositories/provider_details_repository_impl.dart';
import 'package:wassaly/features/provider_details/domain/repositories/provider_details_repository.dart';
import 'package:wassaly/features/search/data/repositories/search_repository_impl.dart';
import 'package:wassaly/features/search/domain/repositories/search_repository.dart';
import 'package:wassaly/features/service_booking/data/repositories/booking_repository_impl.dart';
import 'package:wassaly/features/service_booking/domain/repositories/booking_repository.dart';
import 'package:wassaly/features/service_details/data/repositories/service_details_repository_impl.dart';
import 'package:wassaly/features/service_details/domain/repositories/service_details_repository.dart';
import 'package:wassaly/features/sub_category/data/repositories/sub_category_repository_impl.dart';
import 'package:wassaly/features/sub_category/domain/repositories/sub_category_repository.dart';

void initRepositoryDependencies() {
  // Repositories
  sl
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(sl(), sl(), sl(), sl()),
    )
    ..registerLazySingleton<FcmTokenRepository>(
      () => FcmTokenRepositoryImpl(sl()),
    )
    ..registerLazySingleton<ProfileRepository>(
      () => ProfileRepositoryImpl(sl(), sl()),
    )
    ..registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(sl()))
    ..registerLazySingleton<SubCategoryRepository>(
      () => SubCategoryRepositoryImpl(sl()),
    )
    ..registerLazySingleton<CategoryRepository>(
      () => CategoryRepositoryImpl(sl()),
    )
    ..registerLazySingleton<SearchRepository>(() => SearchRepositoryImpl(sl()))
    ..registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepositoryImpl(sl(), sl()),
    )
    ..registerLazySingleton<ProductDetailsRepository>(
      () => ProductDetailsRepositoryImpl(sl()),
    )
    ..registerLazySingleton<CartRepository>(
      () => CartRepositoryImpl(sl(), sl()),
    )
    ..registerLazySingleton<OrdersRepository>(
      () => OrdersRepositoryImpl(sl(), sl()),
    )
    ..registerLazySingleton<ServiceDetailsRepository>(
      () => ServiceDetailsRepositoryImpl(sl()),
    )
    ..registerLazySingleton<BookingRepository>(
      () => BookingRepositoryImpl(sl(), sl()),
    )
    ..registerLazySingleton<ProviderDetailsRepository>(
      () => ProviderDetailsRepositoryImpl(sl()),
    )
    ..registerLazySingleton<BrandsRepository>(() => BrandsRepositoryImpl(sl()))
    ..registerLazySingleton<OffersRepository>(() => OffersRepositoryImpl(sl()))
    ..registerLazySingleton<AppReviewsRepository>(
      () => AppReviewsRepositoryImpl(sl()),
    )
    ..registerLazySingleton<ProductsFilterRepository>(
      () => ProductsFilterRepositoryImpl(sl()),
    )
    ..registerLazySingleton<NotificationRepository>(
      () => NotificationRepositoryImpl(sl(), sl()),
    )
    ..registerLazySingleton<InternetConnectionService>(
      InternetConnectionService.new,
    )
    ..registerLazySingleton<HomeNavigationService>(
      HomeNavigationService.new,
    )
    ..registerLazySingleton<CancelRequestService>(
      CancelRequestService.new,
    )
    ..registerLazySingleton<CancelTokenInterceptor>(
      () => CancelTokenInterceptor(sl<CancelRequestService>()),
    );
}
