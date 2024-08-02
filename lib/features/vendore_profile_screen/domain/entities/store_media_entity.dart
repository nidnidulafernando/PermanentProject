import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'store_media_entity.g.dart';

@CopyWith()
class StoreMediaEntity extends Equatable {
  final int id;
  final String modelType;
  final int modelId;
  final String collectionName;
  final String name;
  final String fileName;
  final String mimeType;
  final String disk;
  final int size;
  final List<dynamic> manipulations;
  final List<dynamic> customProperties;
  final List<dynamic> responsiveImages;
  final int orderColumn;
  final DateTime createdAt;
  final DateTime updatedAt;

  const StoreMediaEntity({
    required this.id,
    required this.modelType,
    required this.modelId,
    required this.collectionName,
    required this.name,
    required this.fileName,
    required this.mimeType,
    required this.disk,
    required this.size,
    required this.manipulations,
    required this.customProperties,
    required this.responsiveImages,
    required this.orderColumn,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        modelType,
        modelId,
        collectionName,
        name,
        fileName,
        mimeType,
        disk,
        size,
        manipulations,
        customProperties,
        responsiveImages,
        orderColumn,
        createdAt,
        updatedAt,
      ];
}
