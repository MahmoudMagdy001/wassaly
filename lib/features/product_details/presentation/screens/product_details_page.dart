import 'package:wassaly/core/imports/imports.dart';

import '../../../home/domain/entities/product_entity.dart';
import '../../domain/entities/product_detail_entity.dart';
import '../bloc/product_details_bloc.dart';
import '../bloc/product_details_event.dart';
import '../bloc/product_details_state.dart';
import '../widgets/product_details_content.dart';

class ProductDetailsPage extends StatelessWidget {
  final int productId;

  const ProductDetailsPage({
    super.key,
    required this.productId,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          sl<ProductDetailsBloc>()..add(FetchProductDetailsEvent(productId)),
      child: _ProductDetailsView(productId: productId),
    );
  }
}

class _ProductDetailsView extends StatelessWidget {
  final int productId;

  const _ProductDetailsView({required this.productId});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
      listenWhen: (previous, current) =>
          previous.reviewActionStatus != current.reviewActionStatus,
      listener: (context, state) {
        if (state.reviewActionStatus == ReviewActionStatus.success ||
            state.reviewActionStatus == ReviewActionStatus.failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.reviewActionMessage)),
          );
        }
      },
      buildWhen: (previous, current) =>
          previous.status != current.status ||
          previous.product != current.product ||
          previous.relatedProductsStatus != current.relatedProductsStatus ||
          previous.relatedProducts != current.relatedProducts,
      builder: (context, state) {
        // Ensure the page always provides a Scaffold so background and
        // ScaffoldMessenger (SnackBar) work correctly while loading/errors.
        Widget body;

        if (state.status == ProductDetailsStatus.loading ||
            state.status == ProductDetailsStatus.initial) {
          body = const _ProductDetailsSkeleton();
        } else if (state.status == ProductDetailsStatus.failure ||
            state.product == null) {
          body = AppErrorWidget(
            title: 'errors.error_occurred_title'.tr(),
            message: state.errorMessage.isNotEmpty
                ? state.errorMessage
                : 'errors.error_occurred_message'.tr(),
            onRetry: () {
              context.read<ProductDetailsBloc>().add(
                    FetchProductDetailsEvent(productId),
                  );
            },
          );
        } else {
          body = ProductDetailsContent(
            product: state.product!,
            relatedProductsStatus: state.relatedProductsStatus,
            relatedProducts: state.relatedProducts,
          );
        }

        return Scaffold(
          body: body,
        );
      },
    );
  }
}

class _ProductDetailsSkeleton extends StatelessWidget {
  const _ProductDetailsSkeleton();

  @override
  Widget build(BuildContext context) {
    const dummyProduct = ProductDetailEntity(
      id: 0,
      name: 'اسم المنتج التجريبي يظهر هنا',
      image: '',
      price: '1000',
      description:
          'هذا وصف تجريبي للمنتج يظهر عند التحميل ليعطي انطباعا جيدا للمستخدم عن شكل الصفحة النهائي. هذا النص طويل بما يكفي لمحاكاة وصف حقيقي للمنتج.',
      specifications: [
        ProductSpecificationEntity(
          id: 1,
          key: 'المادة',
          value: 'قطن',
          icon: '',
        ),
        ProductSpecificationEntity(
          id: 2,
          key: 'اللون',
          value: 'أزرق',
          icon: '',
        ),
      ],
      images: [],
      subCategory: ProductMetaEntity(id: 1, name: 'فئة تجريبية', image: ''),
      brand: ProductMetaEntity(id: 1, name: 'ماركة تجريبية', image: ''),
      reviews: [],
      offerPercentages: [10],
      isFavorite: false,
    );

    final dummyRelatedProducts = List<ProductEntity>.generate(
      4,
      (index) => const ProductEntity(
        id: 0,
        name: 'منتج مرتبط تجريبي',
        image: '',
        price: '500',
        description: 'وصف منتج مرتبط',
        offers: [],
        reviews: [],
        isFavorite: false,
      ),
    );

    return Skeletonizer(
      enabled: true,
      child: ProductDetailsContent(
        product: dummyProduct,
        relatedProductsStatus: RelatedProductsStatus.success,
        relatedProducts: dummyRelatedProducts,
      ),
    );
  }
}
