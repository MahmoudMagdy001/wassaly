import 'package:wassaly/core/imports/imports.dart';

import '../../domain/entities/provider_detail_entity.dart';

abstract class ProviderDetailsState extends Equatable {
  const ProviderDetailsState();

  @override
  List<Object?> get props => [];
}

class ProviderDetailsInitial extends ProviderDetailsState {}

class ProviderDetailsLoading extends ProviderDetailsState {}

class ProviderDetailsSuccess extends ProviderDetailsState {
  final ProviderDetailEntity provider;
  const ProviderDetailsSuccess(this.provider);

  @override
  List<Object?> get props => [provider];
}

class ProviderDetailsFailure extends ProviderDetailsState {
  final String message;
  const ProviderDetailsFailure(this.message);

  @override
  List<Object?> get props => [message];
}
