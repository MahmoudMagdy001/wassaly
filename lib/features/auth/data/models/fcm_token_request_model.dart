import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_token_request_model.freezed.dart';
part 'fcm_token_request_model.g.dart';

@freezed
abstract class FcmTokenRequestModel with _$FcmTokenRequestModel {
  const FcmTokenRequestModel._();

  const factory FcmTokenRequestModel({
    required String token,
    @JsonKey(name: 'device_id') required String deviceId,
    @JsonKey(name: 'user_id') required int userId,
  }) = _FcmTokenRequestModel;

  factory FcmTokenRequestModel.fromJson(Map<String, dynamic> json) =>
      _$FcmTokenRequestModelFromJson(json);
}
