import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/shared/enums/app_status.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

part 'offers_state.freezed.dart';

@freezed
abstract class OffersState with _$OffersState {
  const factory OffersState({
    @Default(AppStatus.initial) AppStatus status,
    @Default(false) bool isLoadingMore,
    @Default([]) List<ProductEntity> products,
    @Default('') String errorMessage,
    @Default(1) int currentPage,
    @Default(false) bool hasReachedMax,
  }) = _OffersState;
}
