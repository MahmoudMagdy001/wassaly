import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/profile/domain/entities/address_entity.dart';

part 'address_model.freezed.dart';

@freezed
abstract class AddressModel with _$AddressModel {
  const AddressModel._();

  const factory AddressModel({
    @Default('') String id,
    @Default('') String title,
    @Default('') String address,
    @JsonKey(name: 'governorate_id') @Default('') String governorateId,
    @JsonKey(name: 'governorate_name') @Default('') String governorateName,
    @JsonKey(name: 'center_id') @Default('') String centerId,
    @JsonKey(name: 'center_name') @Default('') String centerName,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    final governorate = json['governorate'] as Map<String, dynamic>?;
    final center = json['center'] as Map<String, dynamic>?;

    return AddressModel(
      id: json['id']?.toString() ?? '',
      title: json['title'] as String? ?? '',
      address: json['address'] as String? ?? '',
      governorateId: governorate?['id']?.toString() ?? '',
      governorateName: governorate?['name'] as String? ?? '',
      centerId: center?['id']?.toString() ?? '',
      centerName: center?['name'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'address': address,
        'governorate': {
          'id': governorateId,
          'name': governorateName,
        },
        'center': {
          'id': centerId,
          'name': centerName,
          'governorate_id': governorateId,
        },
      };

  AddressEntity toEntity() => AddressEntity(
        id: id,
        title: title,
        address: address,
        governorateId: governorateId,
        governorateName: governorateName,
        centerId: centerId,
        centerName: centerName,
      );
}
