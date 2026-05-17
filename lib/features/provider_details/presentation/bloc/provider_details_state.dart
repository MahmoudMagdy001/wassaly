import 'package:wassaly/core/imports/imports.dart';
import '../../domain/entities/provider_detail_entity.dart';

class ProviderDetailsState extends Equatable {
  final AppStatus status;
  final ProviderDetailEntity? provider;
  final String errorMessage;

  const ProviderDetailsState({
    this.status = AppStatus.initial,
    this.provider,
    this.errorMessage = '',
  });

  ProviderDetailsState copyWith({
    AppStatus? status,
    ProviderDetailEntity? provider,
    String? errorMessage,
  }) {
    return ProviderDetailsState(
      status: status ?? this.status,
      provider: provider ?? this.provider,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [status, provider, errorMessage];
}
