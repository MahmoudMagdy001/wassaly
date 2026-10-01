import 'dart:io';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_event.freezed.dart';

@freezed
sealed class ProfileEvent with _$ProfileEvent {
  const factory ProfileEvent.profileFetched() = ProfileFetched;

  const factory ProfileEvent.profileRefreshRequested() =
      ProfileRefreshRequested;

  const factory ProfileEvent.profileUpdated({
    required String fullName,
    required String phone,
    File? avatar,
    String? password,
    String? currentPassword,
    String? passwordConfirmation,
  }) = ProfileUpdated;

  const factory ProfileEvent.profileLoggedOut() = ProfileLoggedOut;

  const factory ProfileEvent.profileLoggedOutAllDevices() =
      ProfileLoggedOutAllDevices;

  const factory ProfileEvent.profileAccountDeleted() = ProfileAccountDeleted;

  const factory ProfileEvent.addressesFetched() = AddressesFetched;

  const factory ProfileEvent.addressCreated({
    required String title,
    required String address,
    required String governorateId,
    required String centerId,
  }) = AddressCreated;

  const factory ProfileEvent.addressUpdated({
    required String addressId,
    required String title,
    required String address,
    required String governorateId,
    required String centerId,
  }) = AddressUpdated;

  const factory ProfileEvent.addressDeleted({
    required String addressId,
  }) = AddressDeleted;

  const factory ProfileEvent.governoratesFetched() = GovernoratesFetched;

  const factory ProfileEvent.centersFetched(String governorateId) =
      CentersFetched;

  const factory ProfileEvent.profileReset() = ProfileReset;
}
