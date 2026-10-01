import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/provider_details/domain/entities/provider_detail_entity.dart';

part 'provider_details_state.freezed.dart';

@freezed
sealed class ProviderDetailsState with _$ProviderDetailsState {
  const factory ProviderDetailsState({
    @Default(AppStatus.initial) AppStatus status,
    ProviderDetailEntity? provider,
    @Default('') String errorMessage,
  }) = _ProviderDetailsState;
}
