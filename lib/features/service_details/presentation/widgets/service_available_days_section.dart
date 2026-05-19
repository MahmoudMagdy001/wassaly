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
  final ValueNotifier<ServiceAvailableDayEntity?> _selectedDayNotifier =
      ValueNotifier(null);
  final ValueNotifier<ServiceAvailableTimeEntity?> _selectedTimeNotifier =
      ValueNotifier(null);

  @override
  void dispose() {
    _selectedDayNotifier.dispose();
    _selectedTimeNotifier.dispose();
    super.dispose();
  }

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
          child: ValueListenableBuilder<ServiceAvailableDayEntity?>(
            valueListenable: _selectedDayNotifier,
            builder: (context, selectedDay, child) {
              return Row(
                children: widget.availableDays.map((day) {
                  final isSelected = selectedDay?.id == day.id;
                  return Padding(
                    padding: EdgeInsetsDirectional.only(end: 8.w),
                    child: ChoiceChip(
                      label: Text(context.isArabic ? day.nameAr : day.nameEn),
                      selected: isSelected,
                      onSelected: (selected) {
                        _selectedDayNotifier.value = selected ? day : null;
                        _selectedTimeNotifier.value = null;
                        widget.onSelectionChanged(_selectedDayNotifier.value,
                            _selectedTimeNotifier.value);
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
              );
            },
          ),
        ),
        ValueListenableBuilder<ServiceAvailableDayEntity?>(
          valueListenable: _selectedDayNotifier,
          builder: (context, selectedDay, child) {
            if (selectedDay == null) return const SizedBox.shrink();
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                16.verticalSpace,
                Text(
                  context.l10n.service_details_available_times,
                  style: tt.titleMedium?.copyWith(fontWeight: FontWeight.bold),
                ),
                12.verticalSpace,
                ValueListenableBuilder<ServiceAvailableTimeEntity?>(
                  valueListenable: _selectedTimeNotifier,
                  builder: (context, selectedTime, child) {
                    return Wrap(
                      spacing: 8.w,
                      runSpacing: 8.h,
                      children: selectedDay.availableTimes.map((time) {
                        final isSelected = selectedTime?.id == time.id;
                        return ChoiceChip(
                          label: Text(time.displayTime),
                          selected: isSelected,
                          onSelected: (selected) {
                            _selectedTimeNotifier.value =
                                selected ? time : null;
                            widget.onSelectionChanged(
                                selectedDay, _selectedTimeNotifier.value);
                          },
                          selectedColor: cs.primaryContainer,
                          labelStyle: TextStyle(
                            color: isSelected
                                ? cs.onPrimaryContainer
                                : cs.onSurface,
                            fontWeight: isSelected
                                ? FontWeight.bold
                                : FontWeight.normal,
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ],
    );
  }
}
