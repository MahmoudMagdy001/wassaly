import 'package:wassaly/core/imports/imports.dart';
import '../../domain/usecases/get_provider_details_usecase.dart';
import 'provider_details_state.dart';

class ProviderDetailsCubit extends Cubit<ProviderDetailsState> {
  final GetProviderDetailsUseCase _getProviderDetailsUseCase;

  ProviderDetailsCubit({
    required GetProviderDetailsUseCase getProviderDetailsUseCase,
  })  : _getProviderDetailsUseCase = getProviderDetailsUseCase,
        super(ProviderDetailsInitial());

  Future<void> fetchProviderDetails(int providerId) async {
    emit(ProviderDetailsLoading());

    final result = await _getProviderDetailsUseCase(providerId);

    result.fold(
      (failure) => emit(ProviderDetailsFailure(failure.message)),
      (provider) => emit(ProviderDetailsSuccess(provider)),
    );
  }
}
