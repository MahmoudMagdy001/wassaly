import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/service_details/domain/entities/service_detail_entity.dart';

part 'service_details_state.freezed.dart';

enum ServiceDetailsStatus { initial, loading, success, failure }

enum ReviewActionStatus { initial, loading, success, failure }

@freezed
sealed class ServiceDetailsState with _$ServiceDetailsState {
  const factory ServiceDetailsState({
    @Default(ServiceDetailsStatus.initial) ServiceDetailsStatus status,
    @Default(ReviewActionStatus.initial) ReviewActionStatus reviewActionStatus,
    ServiceDetailEntity? service,
    String? errorMessage,
    @Default('') String reviewActionMessage,
    @Default(false) bool isFavoriteLoading,
  }) = _ServiceDetailsState;
}
