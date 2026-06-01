import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../entities/coupon_entity.dart';
import '../repositories/cart_repository.dart';

class ApplyCouponUseCase {
  final CartRepository repository;

  const ApplyCouponUseCase(this.repository);

  Future<Either<Failure, CouponEntity>> call(String code) {
    return repository.applyCoupon(code);
  }
}
