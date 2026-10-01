import 'package:freezed_annotation/freezed_annotation.dart';

part 'order_entity.freezed.dart';

@freezed
abstract class OrderEntity with _$OrderEntity {
  const factory OrderEntity({
    required String id,
    required String status,
    required double total,
    required DateTime createdAt,
  }) = _OrderEntity;
}
