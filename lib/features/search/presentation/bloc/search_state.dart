import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/core/utils/pagination.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

part 'search_state.freezed.dart';

enum SearchStatus { initial, loading, success, failure, loadingMore }

@freezed
abstract class SearchState with _$SearchState {
  const SearchState._();

  const factory SearchState({
    @Default('') String query,
    @Default(SearchStatus.initial) SearchStatus status,
    @Default(PaginatedResponse(data: []))
    PaginatedResponse<ProductEntity> products,
    @Default('') String errorMessage,
    @Default(false) bool hasSearched,
  }) = _SearchState;

  bool get isLoading => status == SearchStatus.loading;
  bool get isLoadingMore => status == SearchStatus.loadingMore;
  bool get isSuccess => status == SearchStatus.success;
  bool get isFailure => status == SearchStatus.failure;
  bool get isEmpty => products.data.isEmpty && hasSearched && !isLoading;
}
