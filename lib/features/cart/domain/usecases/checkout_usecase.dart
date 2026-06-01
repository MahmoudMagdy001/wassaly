import 'package:fpdart/fpdart.dart';

import '../../../../core/utils/failure.dart';
import '../repositories/cart_repository.dart';

class CheckoutUseCase {
  final CartRepository repository;

  const CheckoutUseCase(this.repository);

  Future<Either<Failure, Map<String, dynamic>>> call({
    required String customerName,
    required String customerPhone,
    required int governorateId,
    required int centerId,
    required String region,
    required String address,
    String? couponCode,
  }) async {
    final checkoutData = {
      'customer_name': customerName,
      'customer_phone': customerPhone,
      'governorate_id': governorateId,
      'center_id': centerId,
      'region': region,
      'customer_address': address,
      if (couponCode != null && couponCode.isNotEmpty)
        'coupon_code': couponCode,
    };

    return await repository.checkout(checkoutData);
  }
}
