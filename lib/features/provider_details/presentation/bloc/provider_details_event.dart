import 'package:wassaly/core/imports/imports.dart';

abstract class ProviderDetailsEvent extends Equatable {
  const ProviderDetailsEvent();

  @override
  List<Object?> get props => [];
}

class FetchProviderDetailsEvent extends ProviderDetailsEvent {
  final int providerId;

  const FetchProviderDetailsEvent(this.providerId);

  @override
  List<Object?> get props => [providerId];
}
