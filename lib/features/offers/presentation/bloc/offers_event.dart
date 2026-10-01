import 'package:freezed_annotation/freezed_annotation.dart';

part 'offers_event.freezed.dart';

@freezed
sealed class OffersEvent with _$OffersEvent {
  const factory OffersEvent.getOffers() = GetOffersEvent;
  const factory OffersEvent.loadMoreOffers() = LoadMoreOffersEvent;
}
