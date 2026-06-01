import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/data/datasources/auth_local_datasource.dart';
import 'package:wassaly/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:wassaly/features/auth/data/datasources/fcm_token_remote_datasource.dart';
import 'package:wassaly/features/favorite/data/datasources/favorite_local_datasource.dart';
import 'package:wassaly/features/favorite/data/datasources/favorite_remote_datasource.dart';
import 'package:wassaly/features/notifications/data/datasources/notification_local_datasource.dart';
import 'package:wassaly/features/notifications/data/datasources/notification_remote_datasource.dart';

import '../../../features/app_reviews/data/datasources/app_reviews_remote_datasource.dart';
import '../../../features/brands/data/datasources/brands_remote_datasource.dart';
import '../../../features/cart/data/datasources/cart_local_datasource.dart';
import '../../../features/cart/data/datasources/cart_remote_datasource.dart';
import '../../../features/category/data/datasources/category_remote_datasource.dart';
import '../../../features/home/data/datasources/home_remote_datasource.dart';
import '../../../features/offers/data/datasources/offers_remote_datasource.dart';
import '../../../features/orders/data/datasources/orders_local_datasource.dart';
import '../../../features/orders/data/datasources/orders_remote_datasource.dart';
import '../../../features/product_details/data/datasources/product_details_remote_datasource.dart';
import '../../../features/products_filter/data/datasources/products_filter_remote_datasource.dart';
import '../../../features/profile/data/datasources/profile_remote_datasource.dart';
import '../../../features/provider_details/data/datasources/provider_details_remote_datasource.dart';
import '../../../features/search/data/datasources/search_remote_datasource.dart';
import '../../../features/service_booking/data/datasources/booking_local_datasource.dart';
import '../../../features/service_booking/data/datasources/booking_remote_datasource.dart';
import '../../../features/service_details/data/datasources/service_details_remote_datasource.dart';
import '../../../features/sub_category/data/datasources/sub_category_remote_datasource.dart';

void initDataSourceDependencies() {
  // DataSources
  sl.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl(SecureStorageService.instance));
  sl.registerLazySingleton<FcmTokenRemoteDataSource>(
      () => FcmTokenRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<ProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<HomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<SubCategoryRemoteDataSource>(
      () => SubCategoryRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<CategoryRemoteDataSource>(
      () => CategoryRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<SearchRemoteDataSource>(
      () => SearchRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<FavoriteRemoteDataSource>(
      () => FavoriteRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<ProductDetailsRemoteDataSource>(
      () => ProductDetailsRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<CartRemoteDataSource>(
      () => CartRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<CartLocalDataSource>(
      () => CartLocalDataSourceImpl());
  sl.registerLazySingleton<FavoriteLocalDataSource>(
      () => FavoriteLocalDataSourceImpl());

  sl.registerLazySingleton<OrdersRemoteDataSource>(
      () => OrdersRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<OrdersLocalDataSource>(
      () => OrdersLocalDataSourceImpl());

  sl.registerLazySingleton<ServiceDetailsRemoteDataSource>(
      () => ServiceDetailsRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<BookingRemoteDataSource>(
      () => BookingRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<BookingLocalDataSource>(
      () => BookingLocalDataSourceImpl());
  sl.registerLazySingleton<ProviderDetailsRemoteDataSource>(
      () => ProviderDetailsRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<BrandsRemoteDataSource>(
      () => BrandsRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<OffersRemoteDataSource>(
      () => OffersRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<AppReviewsRemoteDataSource>(
      () => AppReviewsRemoteDataSourceImpl(DioService.instance));

  sl.registerLazySingleton<ProductsFilterRemoteDataSource>(
      () => ProductsFilterRemoteDataSourceImpl(DioService.instance));

  sl.registerLazySingleton<NotificationRemoteDataSource>(
      () => NotificationRemoteDataSourceImpl(DioService.instance));
  sl.registerLazySingleton<NotificationLocalDataSource>(
      () => NotificationLocalDataSourceImpl());
}
