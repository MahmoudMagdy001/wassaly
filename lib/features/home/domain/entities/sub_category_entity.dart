import '../../../../core/imports/imports.dart';
import '../../../sub_category/domain/entities/service_entity.dart';

class SubCategoryEntity extends Equatable {
  final int id;
  final String name;
  final String image;
  final List<ServiceEntity>? services;

  const SubCategoryEntity({
    required this.id,
    required this.name,
    required this.image,
    this.services,
  });

  @override
  List<Object?> get props => [id, name, image, services];
}
