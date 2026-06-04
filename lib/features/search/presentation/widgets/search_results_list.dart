import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/search/presentation/bloc/search_bloc.dart';
import 'package:wassaly/features/search/presentation/bloc/search_event.dart';
import 'package:wassaly/features/search/presentation/bloc/search_state.dart';

class SearchResultsList extends StatelessWidget {
  const SearchResultsList({super.key});

  @override
  Widget build(BuildContext context) => BlocSelector<SearchBloc, SearchState,
        (List<ProductEntity>, bool, bool)>(
      selector: (state) => (
        state.products.data,
        state.products.hasMore,
        state.isLoadingMore,
      ),
      builder: (context, data) {
        final (products, hasMore, isLoadingMore) = data;

        return SliverMainAxisGroup(
          slivers: [
            AppSliverGrid<ProductEntity>(
              items: products,
              hasMore: hasMore,
              onLoadMore: () {
                context.read<SearchBloc>().add(const SearchLoadMore());
              },
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              itemBuilder: (context, product, index, wrapAnimation) => wrapAnimation(
                  ProductCard(
                    product: product,
                  ),
                ),
            ),
            if (isLoadingMore)
              SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 24.h),
                  child: const AppLoading(),
                ),
              ),
            SliverToBoxAdapter(
              child: SizedBox(height: 24.h),
            ),
          ],
        );
      },
    );
}
