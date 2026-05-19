import 'package:wassaly/core/imports/imports.dart';
import '../../domain/usecases/get_provider_details_usecase.dart';
import 'provider_details_event.dart';
import 'provider_details_state.dart';

class ProviderDetailsBloc
    extends Bloc<ProviderDetailsEvent, ProviderDetailsState> {
  final GetProviderDetailsUseCase _getProviderDetailsUseCase;

  ProviderDetailsBloc({
    required GetProviderDetailsUseCase getProviderDetailsUseCase,
  })  : _getProviderDetailsUseCase = getProviderDetailsUseCase,
        super(const ProviderDetailsState()) {
    on<FetchProviderDetailsEvent>(_onFetchProviderDetails);
  }

  Future<void> _onFetchProviderDetails(
    FetchProviderDetailsEvent event,
    Emitter<ProviderDetailsState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading));

    final result = await _getProviderDetailsUseCase(event.providerId);

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (provider) => emit(state.copyWith(
        status: AppStatus.success,
        provider: provider,
      )),
    );
  }
}
