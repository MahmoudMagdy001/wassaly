import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/profile/domain/entities/center_entity.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';
import 'package:wassaly/features/profile/domain/usecases/create_address_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/delete_account_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_addresses_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_centers_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_governorates_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/get_profile_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/logout_all_devices_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/logout_usecase.dart';
import 'package:wassaly/features/profile/domain/usecases/update_profile_usecase.dart';

part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final GetProfileUseCase _getProfileUseCase;
  final UpdateProfileUseCase _updateProfileUseCase;
  final LogoutUseCase _logoutUseCase;
  final LogoutAllDevicesUseCase _logoutAllDevicesUseCase;
  final DeleteAccountUseCase _deleteAccountUseCase;
  final GetAddressesUseCase _getAddressesUseCase;
  final CreateAddressUseCase _createAddressUseCase;
  final GetGovernoratesUseCase _getGovernoratesUseCase;
  final GetCentersUseCase _getCentersUseCase;

  ProfileBloc({
    required GetProfileUseCase getProfileUseCase,
    required UpdateProfileUseCase updateProfileUseCase,
    required LogoutUseCase logoutUseCase,
    required LogoutAllDevicesUseCase logoutAllDevicesUseCase,
    required DeleteAccountUseCase deleteAccountUseCase,
    required GetAddressesUseCase getAddressesUseCase,
    required CreateAddressUseCase createAddressUseCase,
    required GetGovernoratesUseCase getGovernoratesUseCase,
    required GetCentersUseCase getCentersUseCase,
  })  : _getProfileUseCase = getProfileUseCase,
        _updateProfileUseCase = updateProfileUseCase,
        _logoutUseCase = logoutUseCase,
        _logoutAllDevicesUseCase = logoutAllDevicesUseCase,
        _deleteAccountUseCase = deleteAccountUseCase,
        _getAddressesUseCase = getAddressesUseCase,
        _createAddressUseCase = createAddressUseCase,
        _getGovernoratesUseCase = getGovernoratesUseCase,
        _getCentersUseCase = getCentersUseCase,
        super(const ProfileState()) {
    on<ProfileFetched>(_onProfileFetched);
    on<ProfileUpdated>(_onProfileUpdated);
    on<ProfileLoggedOut>(_onProfileLoggedOut);
    on<ProfileLoggedOutAllDevices>(_onProfileLoggedOutAllDevices);
    on<ProfileAccountDeleted>(_onProfileAccountDeleted);
    on<AddressesFetched>(_onAddressesFetched);
    on<AddressCreated>(_onAddressCreated);
    on<GovernoratesFetched>(_onGovernoratesFetched);
    on<CentersFetched>(_onCentersFetched);
  }

  Future<void> _onProfileFetched(
    ProfileFetched event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(status: AppStatus.loading));

    final result = await _getProfileUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        status: AppStatus.failure,
        errorMessage: failure.message,
      )),
      (user) => emit(state.copyWith(
        status: AppStatus.success,
        user: user,
        clearError: true,
      )),
    );
  }

  Future<void> _onProfileUpdated(
    ProfileUpdated event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(actionStatus: AppStatus.loading));

    final result = await _updateProfileUseCase(
      UpdateProfileParams(
        fullName: event.fullName,
        phone: event.phone,
        avatar: event.avatar,
        password: event.password,
        currentPassword: event.currentPassword,
        passwordConfirmation: event.passwordConfirmation,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: failure.message,
      )),
      (user) => emit(state.copyWith(
        actionStatus: AppStatus.success,
        user: user,
        clearActionError: true,
      )),
    );
  }

  Future<void> _onProfileLoggedOut(
    ProfileLoggedOut event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(actionStatus: AppStatus.loading));

    final result = await _logoutUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: failure.message,
      )),
      (_) => emit(state.copyWith(
        actionStatus: AppStatus.success,
        user: null,
        clearActionError: true,
      )),
    );
  }

  Future<void> _onProfileLoggedOutAllDevices(
    ProfileLoggedOutAllDevices event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(actionStatus: AppStatus.loading));

    final result = await _logoutAllDevicesUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: failure.message,
      )),
      (_) => emit(state.copyWith(
        actionStatus: AppStatus.success,
        user: null,
        clearActionError: true,
      )),
    );
  }

  Future<void> _onProfileAccountDeleted(
    ProfileAccountDeleted event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(actionStatus: AppStatus.loading));

    final result = await _deleteAccountUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        actionStatus: AppStatus.failure,
        actionError: failure.message,
      )),
      (_) => emit(state.copyWith(
        actionStatus: AppStatus.success,
        user: null,
        clearActionError: true,
      )),
    );
  }

  Future<void> _onAddressesFetched(
    AddressesFetched event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(addressStatus: AppStatus.loading));

    final result = await _getAddressesUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        addressStatus: AppStatus.failure,
        addressError: failure.message,
      )),
      (addresses) => emit(state.copyWith(
        addressStatus: AppStatus.success,
        addresses: addresses,
        clearAddressError: true,
      )),
    );
  }

  Future<void> _onAddressCreated(
    AddressCreated event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(addressStatus: AppStatus.loading));

    final result = await _createAddressUseCase(
      CreateAddressParams(
        title: event.title,
        address: event.address,
        governorateId: event.governorateId,
        centerId: event.centerId,
      ),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        addressStatus: AppStatus.failure,
        addressError: failure.message,
      )),
      (address) {
        final updatedAddresses = List<AddressEntity>.from(state.addresses)
          ..add(address);
        emit(state.copyWith(
          addressStatus: AppStatus.success,
          addresses: updatedAddresses,
          clearAddressError: true,
        ));
      },
    );
  }

  Future<void> _onGovernoratesFetched(
    GovernoratesFetched event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(governorateStatus: AppStatus.loading));

    final result = await _getGovernoratesUseCase();

    result.fold(
      (failure) => emit(state.copyWith(
        governorateStatus: AppStatus.failure,
        governorateError: failure.message,
      )),
      (governorates) => emit(state.copyWith(
        governorateStatus: AppStatus.success,
        governorates: governorates,
        clearGovernorateError: true,
      )),
    );
  }

  Future<void> _onCentersFetched(
    CentersFetched event,
    Emitter<ProfileState> emit,
  ) async {
    emit(state.copyWith(centerStatus: AppStatus.loading));

    final result = await _getCentersUseCase(
      GetCentersParams(event.governorateId),
    );

    result.fold(
      (failure) => emit(state.copyWith(
        centerStatus: AppStatus.failure,
        centerError: failure.message,
      )),
      (centers) => emit(state.copyWith(
        centerStatus: AppStatus.success,
        centers: centers,
        clearCenterError: true,
      )),
    );
  }
}
