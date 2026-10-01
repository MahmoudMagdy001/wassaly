import 'package:freezed_annotation/freezed_annotation.dart';

part 'coupon_entity.freezed.dart';

@freezed
abstract class CouponEntity with _$CouponEntity {
  const factory CouponEntity({
    required int id,
    required String code,
    required String title,
    required String description,
    required dynamic value,
    required String type,
    required bool isValid,
    int? userUsageLimit,
  }) = _CouponEntity;
}
