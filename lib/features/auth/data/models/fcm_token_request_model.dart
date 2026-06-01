import 'package:wassaly/core/imports/imports.dart';

class FcmTokenRequestModel extends Equatable {
  final String token;
  final String deviceId;
  final int userId;

  const FcmTokenRequestModel({
    required this.token,
    required this.deviceId,
    required this.userId,
  });

  Map<String, dynamic> toJson() => {
        'token': token,
        'device_id': deviceId,
        'user_id': userId,
      };

  @override
  List<Object?> get props => [token, deviceId, userId];
}
