import 'package:wassaly/core/imports/imports.dart';

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
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: BlocConsumer<ProductDetailsBloc, ProductDetailsState>(
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
          if (state.status == ProductDetailsStatus.loading ||
              state.status == ProductDetailsStatus.initial) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.status == ProductDetailsStatus.failure ||
              state.product == null) {
            return AppErrorWidget(
              title: 'errors.something_went_wrong'.tr(),
              message: state.errorMessage,
              onRetry: () {
                context.read<ProductDetailsBloc>().add(
                      FetchProductDetailsEvent(productId),
                    );
              },
            );
          }

          return ProductDetailsContent(
            product: state.product!,
            relatedProductsStatus: state.relatedProductsStatus,
            relatedProducts: state.relatedProducts,
          );
        },
      ),
    );
  }
}
