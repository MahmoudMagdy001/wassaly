import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/sub_category/domain/entities/service_entity.dart';

import 'service_card.dart';

class ServicesSection extends StatelessWidget {
  final List<ServiceEntity> services;

  const ServicesSection({
    super.key,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverProductGrid<ServiceEntity>(
          padding: EdgeInsets.zero,
          childAspectRatio: 0.51,
          items: services,
          itemBuilder: (context, service, index, wrapAnimation) {
            return wrapAnimation(
              ServiceCard(
                service: service,
                onTap: () => context.push(
                  AppRoutes.serviceDetails,
                  extra: {'serviceId': service.id},
                ),
              ),
            );
          },
        ),
        SliverToBoxAdapter(
          child: 16.verticalSpace,
        ),
      ],
    );
  }
}
