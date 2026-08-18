import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:get_it/get_it.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/services/internet_connection_service.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/favorite/domain/usecases/get_favorites_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/get_service_favorites_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/sync_pending_favorites_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/toggle_favorite_usecase.dart';
import 'package:wassaly/features/favorite/domain/usecases/toggle_service_favorite_usecase.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class MockGetFavoritesUseCase extends Mock implements GetFavoritesUseCase {}
class MockGetServiceFavoritesUseCase extends Mock implements GetServiceFavoritesUseCase {}
class MockToggleFavoriteUseCase extends Mock implements ToggleFavoriteUseCase {}
class MockToggleServiceFavoriteUseCase extends Mock implements ToggleServiceFavoriteUseCase {}
class MockSyncPendingFavoritesUseCase extends Mock implements SyncPendingFavoritesUseCase {}
class MockInternetConnectionService extends Mock implements InternetConnectionService {}

void main() {
  late MockGetFavoritesUseCase mockGetFavoritesUseCase;
  late MockGetServiceFavoritesUseCase mockGetServiceFavoritesUseCase;
  late MockToggleFavoriteUseCase mockToggleFavoriteUseCase;
  late MockToggleServiceFavoriteUseCase mockToggleServiceFavoriteUseCase;
  late MockSyncPendingFavoritesUseCase mockSyncPendingFavoritesUseCase;
  late MockInternetConnectionService mockInternetConnectionService;
  late StreamController<void> connectivityController;

  const tProduct = ProductEntity(
    id: 1,
    name: 'Favorite Product',
    price: '100.0',
    description: 'Description',
    image: 'https://example.com/p.png',
    offers: [],
    reviews: [],
    isFavorite: true,
  );

  setUp(() async {
    mockGetFavoritesUseCase = MockGetFavoritesUseCase();
    mockGetServiceFavoritesUseCase = MockGetServiceFavoritesUseCase();
    mockToggleFavoriteUseCase = MockToggleFavoriteUseCase();
    mockToggleServiceFavoriteUseCase = MockToggleServiceFavoriteUseCase();
    mockSyncPendingFavoritesUseCase = MockSyncPendingFavoritesUseCase();
    mockInternetConnectionService = MockInternetConnectionService();
    connectivityController = StreamController<void>.broadcast();

    when(() => mockInternetConnectionService.connectivityRestoredStream)
        .thenAnswer((_) => connectivityController.stream);

    if (GetIt.I.isRegistered<InternetConnectionService>()) {
      await GetIt.I.unregister<InternetConnectionService>();
    }
    GetIt.I.registerSingleton<InternetConnectionService>(mockInternetConnectionService);
  });

  tearDown(() async {
    await connectivityController.close();
    if (GetIt.I.isRegistered<InternetConnectionService>()) {
      await GetIt.I.unregister<InternetConnectionService>();
    }
  });

  FavoriteBloc buildBloc() => FavoriteBloc(
        mockGetFavoritesUseCase,
        mockGetServiceFavoritesUseCase,
        mockToggleFavoriteUseCase,
        mockToggleServiceFavoriteUseCase,
        mockSyncPendingFavoritesUseCase,
      );

  group('FavoriteBloc', () {
    test('initial state has empty favorites and initial status', () async {
      final bloc = buildBloc();
      expect(bloc.state.status, FavoriteStatus.initial);
      expect(bloc.state.favorites.data, isEmpty);
      await bloc.close();
    });

    blocTest<FavoriteBloc, FavoriteState>(
      'emits [loading, success] when GetFavoritesEvent succeeds',
      build: () {
        when(() => mockGetFavoritesUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Right<Failure, PaginatedResponse<ProductEntity>>(
                  PaginatedResponse<ProductEntity>(data: [tProduct]),
                ),);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetFavoritesEvent()),
      expect: () => [
        const FavoriteState(status: FavoriteStatus.loading),
        const FavoriteState(
          status: FavoriteStatus.success,
          favorites: PaginatedResponse<ProductEntity>(data: [tProduct]),
          favoriteIds: {1},
        ),
      ],
    );

    blocTest<FavoriteBloc, FavoriteState>(
      'emits [loading, error] when GetFavoritesEvent fails',
      build: () {
        when(() => mockGetFavoritesUseCase(page: any(named: 'page')))
            .thenAnswer((_) async => const Left<Failure, PaginatedResponse<ProductEntity>>(
                  ServerFailure('Error fetching favorites'),
                ),);
        return buildBloc();
      },
      act: (bloc) => bloc.add(const GetFavoritesEvent()),
      expect: () => [
        const FavoriteState(status: FavoriteStatus.loading),
        const FavoriteState(
          status: FavoriteStatus.error,
          failure: ServerFailure('Error fetching favorites'),
        ),
      ],
    );
  });
}
