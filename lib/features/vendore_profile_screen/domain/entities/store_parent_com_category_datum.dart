import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_category_data_entity.dart';

part 'store_parent_com_category_datum.g.dart';

@CopyWith()
class StoreParentComCategoryDatumEntity extends Equatable {
  final int id;
  final int parentCompanyId;
  final int categoryId;
  final dynamic createdBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final StoreCategoryDataEntity categoryData;

  const StoreParentComCategoryDatumEntity({
    required this.id,
    required this.parentCompanyId,
    required this.categoryId,
    required this.createdBy,
    required this.createdAt,
    required this.updatedAt,
    required this.categoryData,
  });

  @override
  List<Object> get props => [
        id,
        parentCompanyId,
        categoryId,
        createdBy,
        createdAt,
        updatedAt,
        categoryData,
      ];
}
