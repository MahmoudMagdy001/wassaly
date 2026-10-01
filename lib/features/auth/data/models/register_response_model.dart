import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_response_model.freezed.dart';
part 'register_response_model.g.dart';

@freezed
abstract class RegisterResponseModel with _$RegisterResponseModel {
  const RegisterResponseModel._();

  const factory RegisterResponseModel({
    @Default(false) bool status,
    @Default('') String message,
    RegisterDataModel? data,
  }) = _RegisterResponseModel;

  factory RegisterResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterResponseModelFromJson(json);
}

@freezed
abstract class RegisterDataModel with _$RegisterDataModel {
  const RegisterDataModel._();

  const factory RegisterDataModel({
    @Default(0) int id,
    @Default('') String email,
    @JsonKey(name: 'full_name') @Default('') String fullName,
    String? phone,
    String? type,
    @JsonKey(name: 'email_verified_at') String? emailVerifiedAt,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _RegisterDataModel;

  factory RegisterDataModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterDataModelFromJson(json);
}
