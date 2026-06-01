import 'package:equatable/equatable.dart';

class CouponEntity extends Equatable {
  final int id;
  final String code;
  final String title;
  final String description;
  final double value;
  final String type;
  final bool isValid;

  const CouponEntity({
    required this.id,
    required this.code,
    required this.title,
    required this.description,
    required this.value,
    required this.type,
    required this.isValid,
  });

  bool get isPercentage => type.toLowerCase() == 'percentage';

  @override
  List<Object?> get props =>
      [id, code, title, description, value, type, isValid];
}
