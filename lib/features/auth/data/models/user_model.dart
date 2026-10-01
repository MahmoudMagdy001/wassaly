import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/auth/domain/entities/user_entity.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const UserModel._();

  const factory UserModel({
    @Default('') String id,
    @Default('') String email,
    String? name,
    String? phone,
    @JsonKey(name: 'avatar') String? avatarUrl,
    String? token,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        id: json['id']?.toString() ?? '',
        email: json['email']?.toString() ?? '',
        name: json['name'] as String?,
        phone: json['phone']?.toString(),
        avatarUrl: (json['avatar'] ?? json['avatarUrl']) as String?,
        token: json['token']?.toString(),
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'email': email,
        'name': name,
        'phone': phone,
        'avatar': avatarUrl,
        'token': token,
      };

  UserEntity toEntity() => UserEntity(
        id: id,
        email: email,
        name: name,
        phone: phone,
        avatarUrl: avatarUrl,
      );
}
