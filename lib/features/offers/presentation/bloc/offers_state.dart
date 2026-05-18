import 'package:equatable/equatable.dart';
import 'package:wassaly/core/shared/enums/app_status.dart';
import 'package:wassaly/features/home/domain/entities/product_entity.dart';

class OffersState extends Equatable {
  final AppStatus status;
  final List<ProductEntity> products;
  final String errorMessage;
  final int currentPage;
  final bool hasReachedMax;

  const OffersState({
    this.status = AppStatus.initial,
    this.products = const [],
    this.errorMessage = '',
    this.currentPage = 1,
    this.hasReachedMax = false,
  });

  OffersState copyWith({
    AppStatus? status,
    List<ProductEntity>? products,
    String? errorMessage,
    int? currentPage,
    bool? hasReachedMax,
  }) {
    return OffersState(
      status: status ?? this.status,
      products: products ?? this.products,
      errorMessage: errorMessage ?? this.errorMessage,
      currentPage: currentPage ?? this.currentPage,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  @override
  List<Object?> get props => [
        status,
        products,
        errorMessage,
        currentPage,
        hasReachedMax,
      ];
}
