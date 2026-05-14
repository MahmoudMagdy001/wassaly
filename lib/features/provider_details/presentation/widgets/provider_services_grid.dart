import 'package:wassaly/core/imports/imports.dart';

import '../../../sub_category/domain/entities/service_entity.dart';
import '../../../sub_category/presentation/widgets/service_card.dart';

class ProviderServicesGrid extends StatelessWidget {
  final List<ServiceEntity> services;

  const ProviderServicesGrid({
    super.key,
    required this.services,
  });

  @override
  Widget build(BuildContext context) {
    if (services.isEmpty) return const SizedBox.shrink();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.provider_details_services,
          style: context.theme.textTheme.titleMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
        16.verticalSpace,
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          padding: EdgeInsets.zero,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.w,
            mainAxisSpacing: 8.h,
            childAspectRatio: 0.66,
          ),
          itemCount: services.length,
          itemBuilder: (context, index) =>
              ServiceCard(service: services[index]),
        ),
      ],
    );
  }
}
