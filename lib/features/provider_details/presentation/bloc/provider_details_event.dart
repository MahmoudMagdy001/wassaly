import 'package:freezed_annotation/freezed_annotation.dart';

part 'provider_details_event.freezed.dart';

@freezed
sealed class ProviderDetailsEvent with _$ProviderDetailsEvent {
  const factory ProviderDetailsEvent.fetchProviderDetails(int providerId) =
      FetchProviderDetailsEvent;
}
