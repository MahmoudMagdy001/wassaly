import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/cart/domain/entities/coupon_entity.dart';

part 'coupon_model.freezed.dart';

@freezed
abstract class CouponModel with _$CouponModel {
  const CouponModel._();

  const factory CouponModel({
    @Default(0) int id,
    @Default('') String code,
    @Default('') String title,
    @Default('') String description,
    dynamic value,
    @Default('') String type,
    @JsonKey(name: 'user_usage_limit') int? userUsageLimit,
    @JsonKey(name: 'is_valid') @Default(true) bool isValid,
  }) = _CouponModel;

  factory CouponModel.fromJson(Map<String, dynamic> json) {
    final couponData = json['coupon'] as Map<String, dynamic>? ?? json;

    return CouponModel(
      id: couponData['id'] as int? ?? 0,
      code: couponData['code'] as String? ?? '',
      title: couponData['title'] as String? ?? '',
      description: couponData['description'] as String? ?? '',
      value: couponData['value'],
      type: couponData['type'] as String? ?? '',
      userUsageLimit: couponData['user_usage_limit'] as int?,
      isValid: json['is_valid'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
        'coupon': {
          'id': id,
          'code': code,
          'title': title,
          'description': description,
          'value': value,
          'type': type,
          'user_usage_limit': userUsageLimit,
        },
        'is_valid': isValid,
      };

  CouponEntity toEntity() => CouponEntity(
        id: id,
        code: code,
        title: title,
        description: description,
        value: value,
        type: type,
        userUsageLimit: userUsageLimit,
        isValid: isValid,
      );
}
