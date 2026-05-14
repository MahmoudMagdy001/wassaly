import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_bloc.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_event.dart';
import 'package:wassaly/features/favorite/presentation/bloc/favorite_state.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

class ServiceCard extends StatelessWidget {
  final ServiceEntity service;
  final VoidCallback? onTap;

  const ServiceCard({
    super.key,
    required this.service,
    this.onTap,
  });

  void _openServiceDetails(BuildContext context) {
    if (service.id <= 0) return;

    context.push(
      AppRoutes.serviceDetails,
      extra: {'serviceId': service.id},
    );
  }

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    return GestureDetector(
      onTap: onTap ?? () => _openServiceDetails(context),
      child: Container(
        decoration: BoxDecoration(
          color: cs.surface,
          borderRadius: BorderRadius.circular(9.r),
          border: Border.all(
            color: cs.outlineVariant.withValues(alpha: 0.5),
          ),
        ),
        clipBehavior: Clip.antiAlias,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image section
            SizedBox(
              height: 140.h,
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: service.image != null && service.image!.isNotEmpty
                        ? AppCachedImage(
                            imageUrl: service.image!,
                            fit: BoxFit.cover,
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(9.r),
                            ),
                          )
                        : ColoredBox(
                            color: cs.surfaceContainerLow,
                            child: Center(
                              child: Icon(
                                Icons.image_not_supported_outlined,
                                color: cs.onSurfaceVariant,
                                size: 40.r,
                              ),
                            ),
                          ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child:
                        BlocSelector<FavoriteBloc, FavoriteState, (bool, bool)>(
                      selector: (state) => (
                        state.serviceFavoriteIds.contains(service.id) ||
                            (state.status == FavoriteStatus.initial &&
                                service.isFavorite),
                        state.serviceTogglingIds.contains(service.id),
                      ),
                      builder: (context, status) {
                        final isFavorite = status.$1;
                        final isToggling = status.$2;
                        return GestureDetector(
                          onTap: isToggling
                              ? null
                              : () {
                                  context.read<FavoriteBloc>().add(
                                        ToggleServiceFavoriteEvent(
                                          service.id,
                                          expectedIsFavorite: isFavorite,
                                        ),
                                      );
                                },
                          child: Container(
                            margin: EdgeInsetsDirectional.symmetric(
                                horizontal: 6.w, vertical: 6.h),
                            padding: const EdgeInsets.all(6),
                            decoration: BoxDecoration(
                              color: cs.surface.withValues(alpha: 0.9),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: cs.shadow.withValues(alpha: 0.1),
                                  blurRadius: 4,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Icon(
                              isFavorite
                                  ? Icons.favorite_rounded
                                  : Icons.favorite_outline_rounded,
                              size: 18.r,
                              color:
                                  isFavorite ? cs.error : cs.onSurfaceVariant,
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),

            // Content section
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.w,
                  vertical: 8.h,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      service.title,
                      style: tt.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.onSurface,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    4.verticalSpace,

                    // Description
                    if (service.description.isNotEmpty)
                      Text(
                        service.description,
                        style: tt.labelSmall?.copyWith(
                          color: cs.onSurfaceVariant,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),

                    const Spacer(),

                    // Price
                    Text(
                      '${service.price} ${context.l10n.shared_currency_egp}',
                      style: tt.labelMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: cs.primary,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
