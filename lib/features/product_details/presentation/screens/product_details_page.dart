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

  void _onRetry(BuildContext context) {
    context.read<ProductDetailsBloc>().add(
          FetchProductDetailsEvent(productId),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProductDetailsBloc, ProductDetailsState>(
      listenWhen: (previous, current) =>
          previous.reviewActionStatus != current.reviewActionStatus,
      listener: (context, state) {
        if (state.reviewActionStatus == ReviewActionStatus.success ||
            state.reviewActionStatus == ReviewActionStatus.failure) {
          final message = state.reviewActionMessage ==
                  'product_details_review_created'
              ? context.l10n.product_details_review_created
              : state.reviewActionMessage == 'product_details_review_updated'
                  ? context.l10n.product_details_review_updated
                  : state.reviewActionMessage;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          );
        }
      },
      child: BlocSelector<
          ProductDetailsBloc,
          ProductDetailsState,
          (
            ProductDetailsStatus,
            ProductDetailEntity?,
            RelatedProductsStatus,
            List<ProductEntity>,
            String
          )>(
        selector: (state) => (
          state.status,
          state.product,
          state.relatedProductsStatus,
          state.relatedProducts,
          state.errorMessage,
        ),
        builder: (context, data) {
          final (
            status,
            product,
            relatedProductsStatus,
            relatedProducts,
            errorMessage
          ) = data;

          if (status == ProductDetailsStatus.loading ||
              status == ProductDetailsStatus.initial) {
            return const _ProductDetailsSkeleton();
          } else if (status == ProductDetailsStatus.failure ||
              product == null) {
            return Scaffold(
              appBar: AppBar(title: Text(context.l10n.product_details_title)),
              body: AppErrorWidget(
                title: context.l10n.errors_error_occurred_title,
                message: errorMessage.isNotEmpty
                    ? errorMessage
                    : context.l10n.errors_error_occurred_message,
                onRetry: () => _onRetry(context),
              ),
            );
          } else {
            return ProductDetailsContent(
              product: product,
              relatedProductsStatus: relatedProductsStatus,
              relatedProducts: relatedProducts,
            );
          }
        },
      ),
    );
  }
}

class _ProductDetailsSkeleton extends StatelessWidget {
  const _ProductDetailsSkeleton();

  @override
  Widget build(BuildContext context) {
    final dummyProduct = ProductDetailEntity(
      id: 0,
      name: context.l10n.product_details_title,
      image: '',
      price: '1000',
      description: context.l10n.product_details_description,
      specifications: const [
        ProductSpecificationEntity(
          id: 1,
          key: 'Placeholder Key',
          value: 'Placeholder Value Placeholder',
          icon: '',
        ),
        ProductSpecificationEntity(
          id: 2,
          key: 'Another Key',
          value: 'Another Value',
          icon: '',
        ),
      ],
      images: const [],
      subCategory:
          const ProductMetaEntity(id: 1, name: 'Category Name', image: ''),
      brand: const ProductMetaEntity(id: 1, name: 'Brand Name', image: ''),
      reviews: const [],
      offerPercentages: const [10],
      isFavorite: false,
      provider: null,
    );

    final dummyRelatedProducts = List<ProductEntity>.generate(
      4,
      (index) => const ProductEntity(
        id: 0,
        name: 'Related Product Name',
        image: '',
        price: '500',
        description: 'Product description goes here',
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
