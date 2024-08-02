import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

import 'store_media_entity.dart';

part 'store_category_data_entity.g.dart';

@CopyWith()
class StoreCategoryDataEntity extends Equatable {
  final int id;
  final int index;
  final String name;
  final dynamic description;
  final int isActive;
  final dynamic updatedBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String icon;
  final String background;
  final List<StoreMediaEntity> media;

  const StoreCategoryDataEntity({
    required this.id,
    required this.index,
    required this.name,
    required this.description,
    required this.isActive,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.icon,
    required this.background,
    required this.media,
  });

  @override
  List<Object> get props => [
        id,
        index,
        name,
        description,
        isActive,
        updatedBy,
        createdAt,
        updatedAt,
        icon,
        background,
        media,
      ];
}
