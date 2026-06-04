import 'package:wassaly/features/auth/data/models/user_model.dart';

class LoginResponseModel {
  final bool status;
  final String message;
  final LoginData? data;

  const LoginResponseModel({
    required this.status,
    required this.message,
    this.data,
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json) {
    final dynamic rawData = json['data'];
    return LoginResponseModel(
      status: json['status'] as bool? ?? false,
      message: json['message'] as String? ?? '',
      data: rawData != null && rawData is Map<String, dynamic>
          ? LoginData.fromJson(rawData)
          : null,
    );
  }

  Map<String, dynamic> toJson() => {
      'status': status,
      'message': message,
      'data': data?.toJson(),
    };
}

class LoginData {
  final UserModel user;
  final String token;

  const LoginData({
    required this.user,
    required this.token,
  });

  factory LoginData.fromJson(Map<String, dynamic> json) => LoginData(
      user: UserModel.fromJson(json['user'] as Map<String, dynamic>),
      token: json['token'] as String,
    );

  Map<String, dynamic> toJson() => {
      'user': user.toJson(),
      'token': token,
    };
}
