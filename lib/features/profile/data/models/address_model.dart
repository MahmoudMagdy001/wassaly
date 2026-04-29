import 'package:wassaly/features/profile/domain/entities/address_entity.dart';

class AddressModel extends AddressEntity {
  const AddressModel({
    required super.id,
    required super.title,
    required super.address,
    required super.governorateId,
    required super.governorateName,
    required super.centerId,
    required super.centerName,
  });

  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
      id: json['id'].toString(),
      title: json['title'] as String? ?? '',
      address: json['address'] as String? ?? '',
      governorateId: json['governorate_id'].toString(),
      governorateName: json['governorate_name'] as String? ?? '',
      centerId: json['center_id'].toString(),
      centerName: json['center_name'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'address': address,
      'governorate_id': governorateId,
      'governorate_name': governorateName,
      'center_id': centerId,
      'center_name': centerName,
    };
  }
}
