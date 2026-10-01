import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';
import 'package:wassaly/features/profile/domain/entities/center_entity.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';

part 'profile_state.freezed.dart';

@freezed
sealed class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(AppStatus.initial) AppStatus status,
    @Default(AppStatus.initial) AppStatus actionStatus,
    @Default(AppStatus.initial) AppStatus addressStatus,
    @Default(AppStatus.initial) AppStatus governorateStatus,
    @Default(AppStatus.initial) AppStatus centerStatus,
    UserEntity? user,
    @Default([]) List<AddressEntity> addresses,
    @Default([]) List<GovernorateEntity> governorates,
    @Default([]) List<CenterEntity> centers,
    String? errorMessage,
    String? actionError,
    String? addressError,
    String? governorateError,
    String? centerError,
  }) = _ProfileState;
}
