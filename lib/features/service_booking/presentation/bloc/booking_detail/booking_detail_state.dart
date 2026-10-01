import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/service_booking/domain/entities/booking_entity.dart';
import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

part 'booking_detail_state.freezed.dart';

enum BookingDetailStatus { initial, loading, success, failure }

enum BookingActionStatus { initial, loading, success, failure }

@freezed
sealed class BookingDetailState with _$BookingDetailState {
  const factory BookingDetailState({
    @Default(BookingDetailStatus.initial) BookingDetailStatus status,
    @Default(BookingActionStatus.initial) BookingActionStatus actionStatus,
    BookingEntity? booking,
    @Default('') String errorMessage,
    @Default('') String actionErrorMessage,
    @Default([]) List<ServiceAvailableDayEntity> availableDays,
    @Default(false) bool isLoadingDays,
    @Default('') String loadDaysError,
  }) = _BookingDetailState;
}
