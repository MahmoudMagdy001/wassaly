import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';
import 'package:wassaly/features/offers/presentation/bloc/offers_bloc.dart';
import 'package:wassaly/features/offers/presentation/bloc/offers_event.dart';
import 'package:wassaly/features/offers/presentation/bloc/offers_state.dart';

class OffersPage extends StatelessWidget {
  const OffersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<OffersBloc>()..add(GetOffersEvent()),
      child: const OffersView(),
    );
  }
}

class OffersView extends StatefulWidget {
  const OffersView({super.key});

  @override
  State<OffersView> createState() => _OffersViewState();
}

class _OffersViewState extends State<OffersView> {
  final _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 200) {
      context.read<OffersBloc>().add(LoadMoreOffersEvent());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final cs = context.theme.colorScheme;

    return Scaffold(
      backgroundColor: cs.surface,
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          AppSliverTopBar(
            titleWidget: Text(
              l10n.offers, // Ensure we have this localized string
              style: context.theme.textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
          ),
          BlocSelector<OffersBloc, OffersState,
              (AppStatus, List<ProductEntity>, bool, String)>(
            selector: (state) => (
              state.status,
              state.products,
              state.hasReachedMax,
              state.errorMessage,
            ),
            builder: (context, data) {
              final (status, products, hasReachedMax, errorMessage) = data;

              final isLoading = status == AppStatus.loading && products.isEmpty;

              if (isLoading || products.isNotEmpty) {
                return AppProductsSection(
                  isLoading: isLoading,
                  products: isLoading ? const [] : products,
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
                  hasMore: isLoading ? false : !hasReachedMax,
                  isLoadingMore:
                      isLoading ? false : (status == AppStatus.loading),
                  mainAxisExtent: 240.h,
                  onLoadMore: isLoading
                      ? null
                      : () {
                          if (status != AppStatus.loading) {
                            context
                                .read<OffersBloc>()
                                .add(LoadMoreOffersEvent());
                          }
                        },
                );
              }

              if (status == AppStatus.failure) {
                return SliverFillRemaining(
                  child: AppErrorWidget(
                    message: errorMessage,
                    onRetry: () =>
                        context.read<OffersBloc>().add(GetOffersEvent()),
                  ),
                );
              }

              return SliverFillRemaining(
                child: AppEmptyState(
                  title: l10n
                      .errors_something_went_wrong, // Or 'no_offers' if added
                  icon: Icons.local_offer_outlined,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
