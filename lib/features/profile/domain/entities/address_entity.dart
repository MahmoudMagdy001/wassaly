import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_entity.freezed.dart';

@freezed
abstract class AddressEntity with _$AddressEntity {
  const factory AddressEntity({
    required String id,
    required String title,
    required String address,
    required String governorateId,
    required String governorateName,
    required String centerId,
    required String centerName,
  }) = _AddressEntity;
}
