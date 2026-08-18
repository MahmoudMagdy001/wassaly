import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:mocktail/mocktail.dart';
import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/home/domain/entities/banner_entity.dart';
import 'package:wassaly/features/home/domain/usecases/get_banners_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_categories_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_popular_services_usecase.dart';
import 'package:wassaly/features/home/domain/usecases/get_products_usecase.dart';
import 'package:wassaly/features/home/presentation/bloc/home_bloc.dart';
import 'package:wassaly/features/home/presentation/bloc/home_event.dart';
import 'package:wassaly/features/home/presentation/bloc/home_state.dart';

class MockGetBannersUseCase extends Mock implements GetBannersUseCase {}
class MockGetCategoriesUseCase extends Mock implements GetCategoriesUseCase {}
class MockGetPopularServicesUseCase extends Mock implements GetPopularServicesUseCase {}
class MockGetProductsUseCase extends Mock implements GetProductsUseCase {}

void main() {
  late MockGetBannersUseCase mockGetBannersUseCase;
  late MockGetCategoriesUseCase mockGetCategoriesUseCase;
  late MockGetPopularServicesUseCase mockGetPopularServicesUseCase;
  late MockGetProductsUseCase mockGetProductsUseCase;

  const tBanner = BannerEntity(
    id: 1,
    title: 'Special Offer',
    description: 'Up to 50% off',
    image: 'https://example.com/banner.png',
    type: 'product',
  );

  setUp(() {
    mockGetBannersUseCase = MockGetBannersUseCase();
    mockGetCategoriesUseCase = MockGetCategoriesUseCase();
    mockGetPopularServicesUseCase = MockGetPopularServicesUseCase();
    mockGetProductsUseCase = MockGetProductsUseCase();
  });

  HomeBloc buildBloc() => HomeBloc(
        getBannersUseCase: mockGetBannersUseCase,
        getCategoriesUseCase: mockGetCategoriesUseCase,
        getPopularServicesUseCase: mockGetPopularServicesUseCase,
        getProductsUseCase: mockGetProductsUseCase,
      );

  group('HomeBloc', () {
    test('initial state has HomeStatus.initial for all sections', () async {
      final bloc = buildBloc();
      expect(bloc.state.bannersStatus, HomeStatus.initial);
      expect(bloc.state.categoriesStatus, HomeStatus.initial);
      expect(bloc.state.popularServicesStatus, HomeStatus.initial);
      expect(bloc.state.productsStatus, HomeStatus.initial);
      await bloc.close();
    });

    blocTest<HomeBloc, HomeState>(
      'emits [loading, success] when GetBannersEvent succeeds',
      build: () {
        when(() => mockGetBannersUseCase())
            .thenAnswer((_) async => const Right<Failure, List<BannerEntity>>([tBanner]));
        return buildBloc();
      },
      act: (bloc) => bloc.add(GetBannersEvent()),
      expect: () => [
        const HomeState(bannersStatus: HomeStatus.loading),
        const HomeState(
          bannersStatus: HomeStatus.success,
          banners: [tBanner],
        ),
      ],
    );

    blocTest<HomeBloc, HomeState>(
      'emits [loading, failure] when GetBannersEvent fails',
      build: () {
        when(() => mockGetBannersUseCase())
            .thenAnswer((_) async => const Left<Failure, List<BannerEntity>>(ServerFailure('Failed to load banners')));
        return buildBloc();
      },
      act: (bloc) => bloc.add(GetBannersEvent()),
      expect: () => [
        const HomeState(bannersStatus: HomeStatus.loading),
        const HomeState(
          bannersStatus: HomeStatus.failure,
          failure: ServerFailure('Failed to load banners'),
        ),
      ],
    );
  });
}
