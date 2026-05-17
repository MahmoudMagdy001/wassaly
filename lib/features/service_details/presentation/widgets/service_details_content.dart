import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/service_details/presentation/bloc/service_details_bloc.dart';

import '../../domain/entities/service_detail_entity.dart';
import 'book_service_bottom_bar.dart';
import 'service_details_gallery.dart';
import 'service_details_info.dart';

class ServiceDetailsContent extends StatefulWidget {
  final ServiceDetailEntity service;

  const ServiceDetailsContent({
    super.key,
    required this.service,
  });

  @override
  State<ServiceDetailsContent> createState() => _ServiceDetailsContentState();
}

class _ServiceDetailsContentState extends State<ServiceDetailsContent> {
  ServiceAvailableDayEntity? _selectedDay;
  ServiceAvailableTimeEntity? _selectedTime;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ServiceDetailsBloc, ServiceDetailsState>(
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
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            AppSliverTopBar(
              title: context.l10n.service_details_title,
            ),
            SliverToBoxAdapter(
              child: ServiceDetailsGallery(
                gallery: _resolveGallery(widget.service),
              ),
            ),
            SliverToBoxAdapter(
              child: 16.verticalSpace,
            ),
            ServiceDetailsInfo(
              service: widget.service,
              onSelectionChanged: (day, time) {
                setState(() {
                  _selectedDay = day;
                  _selectedTime = time;
                });
              },
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 100.h),
            ),
          ],
        ),
        bottomSheet: Padding(
          padding: EdgeInsets.only(bottom: 6.h),
          child: BookServiceBottomBar(
            price: widget.service.price,
            isEnabled: _selectedDay != null && _selectedTime != null,
            onBookPressed: () {
              context.push(
                AppRoutes.serviceBooking,
                extra: {
                  'service': widget.service,
                  'selectedDay': _selectedDay,
                  'selectedTime': _selectedTime,
                },
              );
            },
          ),
        ),
      ),
    );
  }

  List<String> _resolveGallery(ServiceDetailEntity service) {
    final images = List<String>.from(service.images);
    if (service.image.isNotEmpty && !images.contains(service.image)) {
      images.insert(0, service.image);
    }
    return images.isEmpty ? [service.image] : images;
  }
}
