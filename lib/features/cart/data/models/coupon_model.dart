import '../../domain/entities/coupon_entity.dart';

class CouponModel extends CouponEntity {
  const CouponModel({
    required super.id,
    required super.code,
    required super.title,
    required super.description,
    required super.value,
    required super.type,
    required super.isValid,
  });

  factory CouponModel.fromResponse(Map<String, dynamic> json) {
    final data = json['data'] as Map<String, dynamic>? ?? {};
    final coupon = data['coupon'] as Map<String, dynamic>? ?? {};
    return CouponModel(
      id: (coupon['id'] as num?)?.toInt() ?? 0,
      code: coupon['code']?.toString() ?? '',
      title: coupon['title']?.toString() ?? '',
      description: coupon['description']?.toString() ?? '',
      value: (coupon['value'] as num?)?.toDouble() ?? 0,
      type: coupon['type']?.toString() ?? '',
      isValid: data['is_valid'] as bool? ?? false,
    );
  }
}
