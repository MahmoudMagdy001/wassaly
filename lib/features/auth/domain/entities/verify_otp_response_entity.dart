import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_otp_response_entity.freezed.dart';

@freezed
abstract class VerifyOtpResponseEntity with _$VerifyOtpResponseEntity {
  const factory VerifyOtpResponseEntity({
    required bool status,
    required String message,
    VerifyOtpUserDataEntity? data,
  }) = _VerifyOtpResponseEntity;
}

@freezed
abstract class VerifyOtpUserDataEntity with _$VerifyOtpUserDataEntity {
  const factory VerifyOtpUserDataEntity({
    required int id,
    required String name,
    required String email,
    String? phone,
    String? avatar,
    String? type,
  }) = _VerifyOtpUserDataEntity;
}
