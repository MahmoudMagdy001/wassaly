import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/profile/domain/entities/center_entity.dart';

part 'center_model.freezed.dart';
part 'center_model.g.dart';

@freezed
abstract class CenterModel with _$CenterModel {
  const CenterModel._();

  const factory CenterModel({
    @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'governorate_id') @Default('') String governorateId,
  }) = _CenterModel;

  factory CenterModel.fromJson(Map<String, dynamic> json) => CenterModel(
        id: json['id']?.toString() ?? '',
        name: json['name'] as String? ?? '',
        governorateId: json['governorate_id']?.toString() ?? '',
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'governorate_id': governorateId,
      };

  CenterEntity toEntity() => CenterEntity(
        id: id,
        name: name,
        governorateId: governorateId,
      );
}
