import 'package:wassaly/core/imports/imports.dart';

import '../../domain/entities/service_detail_entity.dart';

class ServiceAvailableDaysSection extends StatefulWidget {
  final List<ServiceAvailableDayEntity> availableDays;
  final void Function(ServiceAvailableDayEntity?, ServiceAvailableTimeEntity?)
      onSelectionChanged;

  const ServiceAvailableDaysSection({
    super.key,
    required this.availableDays,
    required this.onSelectionChanged,
  });

  @override
  State<ServiceAvailableDaysSection> createState() =>
      _ServiceAvailableDaysSectionState();
}

class _ServiceAvailableDaysSectionState
    extends State<ServiceAvailableDaysSection> {
  ServiceAvailableDayEntity? _selectedDay;
  ServiceAvailableTimeEntity? _selectedTime;

  @override
  Widget build(BuildContext context) {
    final cs = context.theme.colorScheme;
    final tt = context.theme.textTheme;

    if (widget.availableDays.isEmpty) {
      return Text(
        context.l10n.service_details_no_available_days,
        style: tt.bodyMedium?.copyWith(color: cs.error),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.l10n.service_details_available_days,
          style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
        ),
        12.verticalSpace,
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.availableDays.map((day) {
              final isSelected = _selectedDay?.id == day.id;
              return Padding(
                padding: EdgeInsetsDirectional.only(end: 8.w),
                child: ChoiceChip(
                  label: Text(context.isArabic ? day.nameAr : day.nameEn),
                  selected: isSelected,
                  onSelected: (selected) {
                    setState(() {
                      _selectedDay = selected ? day : null;
                      _selectedTime = null;
                    });
                    widget.onSelectionChanged(_selectedDay, _selectedTime);
                  },
                  selectedColor: cs.primary,
                  labelStyle: TextStyle(
                    color: isSelected ? cs.onPrimary : cs.onSurface,
                    fontWeight:
                        isSelected ? FontWeight.bold : FontWeight.normal,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
        if (_selectedDay != null) ...[
          16.verticalSpace,
          Text(
            context.l10n.service_details_available_times,
            style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
          ),
          12.verticalSpace,
          Wrap(
            spacing: 8.w,
            runSpacing: 8.h,
            children: _selectedDay!.availableTimes.map((time) {
              final isSelected = _selectedTime?.id == time.id;
              return ChoiceChip(
                label: Text(time.displayTime),
                selected: isSelected,
                onSelected: (selected) {
                  setState(() {
                    _selectedTime = selected ? time : null;
                  });
                  widget.onSelectionChanged(_selectedDay, _selectedTime);
                },
                selectedColor: cs.primaryContainer,
                labelStyle: TextStyle(
                  color: isSelected ? cs.onPrimaryContainer : cs.onSurface,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                ),
              );
            }).toList(),
          ),
        ],
      ],
    );
  }
}
