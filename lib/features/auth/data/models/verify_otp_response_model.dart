import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/verify_otp_response_entity.dart';

part 'verify_otp_response_model.freezed.dart';
part 'verify_otp_response_model.g.dart';

@freezed
abstract class VerifyOtpResponseModel with _$VerifyOtpResponseModel {
  const VerifyOtpResponseModel._();

  const factory VerifyOtpResponseModel({
    @Default(false) bool status,
    @Default('') String message,
    VerifyOtpDataModel? data,
  }) = _VerifyOtpResponseModel;

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) =>
      VerifyOtpResponseModel(
        status: json['status'] as bool? ?? false,
        message: json['message'] as String? ?? '',
        data: json['data'] != null
            ? VerifyOtpDataModel.fromJson(json['data'] as Map<String, dynamic>)
            : null,
      );

  VerifyOtpResponseEntity toEntity() => VerifyOtpResponseEntity(
        status: status,
        message: message,
        data: data?.toEntity(),
      );
}

@freezed
abstract class VerifyOtpDataModel with _$VerifyOtpDataModel {
  const VerifyOtpDataModel._();

  const factory VerifyOtpDataModel({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String email,
    String? phone,
    String? avatar,
    String? type,
  }) = _VerifyOtpDataModel;

  factory VerifyOtpDataModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyOtpDataModelFromJson(json);

  VerifyOtpUserDataEntity toEntity() => VerifyOtpUserDataEntity(
        id: id,
        name: name,
        email: email,
        phone: phone,
        avatar: avatar,
        type: type,
      );
}
