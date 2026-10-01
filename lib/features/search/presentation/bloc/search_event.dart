import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_event.freezed.dart';

@freezed
sealed class SearchEvent with _$SearchEvent {
  const factory SearchEvent.queryChanged(String query) = SearchQueryChanged;
  const factory SearchEvent.submitted() = SearchSubmitted;
  const factory SearchEvent.loadMore() = SearchLoadMore;
  const factory SearchEvent.cleared() = SearchCleared;
}
