import '../../domain/entities/coupon_entity.dart';

class CouponModel extends CouponEntity {
  const CouponModel({
    required super.id,
    required super.code,
    required super.title,
    required super.description,
    required super.value,
    required super.type,
    super.userUsageLimit,
    required super.isValid,
  });

  factory CouponModel.fromJson(Map<String, dynamic> json) {
    final couponData = json['coupon'] as Map<String, dynamic>;

    return CouponModel(
      id: couponData['id'] as int,
      code: couponData['code'] as String,
      title: couponData['title'] as String,
      description: couponData['description'] as String,
      value: couponData['value'],
      type: couponData['type'] as String,
      userUsageLimit: couponData['user_usage_limit'] as int?,
      isValid: json['is_valid'] as bool? ?? true,
    );
  }

  Map<String, dynamic> toJson() {
    return {
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
  }

  CouponEntity toEntity() {
    return CouponEntity(
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
}
