import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/profile/domain/entities/governorate_entity.dart';

part 'governorate_model.freezed.dart';
part 'governorate_model.g.dart';

@freezed
abstract class GovernorateModel with _$GovernorateModel {
  const GovernorateModel._();

  const factory GovernorateModel({
    @Default('') String id,
    @Default('') String name,
    @JsonKey(name: 'shipping_cost') @Default(0.0) double shippingCost,
  }) = _GovernorateModel;

  factory GovernorateModel.fromJson(Map<String, dynamic> json) =>
      GovernorateModel(
        id: json['id']?.toString() ?? '',
        name: json['name'] as String? ?? '',
        shippingCost: (json['shipping_cost'] as num?)?.toDouble() ?? 0.0,
      );

  @override
  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'shipping_cost': shippingCost,
      };

  GovernorateEntity toEntity() => GovernorateEntity(
        id: id,
        name: name,
        shippingCost: shippingCost,
      );
}
