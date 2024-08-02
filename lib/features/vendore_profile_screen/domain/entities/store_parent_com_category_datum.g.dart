// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_parent_com_category_datum.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreParentComCategoryDatumEntityCWProxy {
  StoreParentComCategoryDatumEntity id(int id);

  StoreParentComCategoryDatumEntity parentCompanyId(int parentCompanyId);

  StoreParentComCategoryDatumEntity categoryId(int categoryId);

  StoreParentComCategoryDatumEntity createdBy(dynamic createdBy);

  StoreParentComCategoryDatumEntity createdAt(DateTime createdAt);

  StoreParentComCategoryDatumEntity updatedAt(DateTime updatedAt);

  StoreParentComCategoryDatumEntity categoryData(
      StoreCategoryDataEntity categoryData);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreParentComCategoryDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreParentComCategoryDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreParentComCategoryDatumEntity call({
    int? id,
    int? parentCompanyId,
    int? categoryId,
    dynamic createdBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    StoreCategoryDataEntity? categoryData,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreParentComCategoryDatumEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreParentComCategoryDatumEntity.copyWith.fieldName(...)`
class _$StoreParentComCategoryDatumEntityCWProxyImpl
    implements _$StoreParentComCategoryDatumEntityCWProxy {
  const _$StoreParentComCategoryDatumEntityCWProxyImpl(this._value);

  final StoreParentComCategoryDatumEntity _value;

  @override
  StoreParentComCategoryDatumEntity id(int id) => this(id: id);

  @override
  StoreParentComCategoryDatumEntity parentCompanyId(int parentCompanyId) =>
      this(parentCompanyId: parentCompanyId);

  @override
  StoreParentComCategoryDatumEntity categoryId(int categoryId) =>
      this(categoryId: categoryId);

  @override
  StoreParentComCategoryDatumEntity createdBy(dynamic createdBy) =>
      this(createdBy: createdBy);

  @override
  StoreParentComCategoryDatumEntity createdAt(DateTime createdAt) =>
      this(createdAt: createdAt);

  @override
  StoreParentComCategoryDatumEntity updatedAt(DateTime updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  StoreParentComCategoryDatumEntity categoryData(
          StoreCategoryDataEntity categoryData) =>
      this(categoryData: categoryData);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreParentComCategoryDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreParentComCategoryDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreParentComCategoryDatumEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? parentCompanyId = const $CopyWithPlaceholder(),
    Object? categoryId = const $CopyWithPlaceholder(),
    Object? createdBy = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? categoryData = const $CopyWithPlaceholder(),
  }) {
    return StoreParentComCategoryDatumEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      parentCompanyId: parentCompanyId == const $CopyWithPlaceholder() ||
              parentCompanyId == null
          ? _value.parentCompanyId
          // ignore: cast_nullable_to_non_nullable
          : parentCompanyId as int,
      categoryId:
          categoryId == const $CopyWithPlaceholder() || categoryId == null
              ? _value.categoryId
              // ignore: cast_nullable_to_non_nullable
              : categoryId as int,
      createdBy: createdBy == const $CopyWithPlaceholder() || createdBy == null
          ? _value.createdBy
          // ignore: cast_nullable_to_non_nullable
          : createdBy as dynamic,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      categoryData:
          categoryData == const $CopyWithPlaceholder() || categoryData == null
              ? _value.categoryData
              // ignore: cast_nullable_to_non_nullable
              : categoryData as StoreCategoryDataEntity,
    );
  }
}

extension $StoreParentComCategoryDatumEntityCopyWith
    on StoreParentComCategoryDatumEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreParentComCategoryDatumEntity.copyWith(...)` or like so:`instanceOfStoreParentComCategoryDatumEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreParentComCategoryDatumEntityCWProxy get copyWith =>
      _$StoreParentComCategoryDatumEntityCWProxyImpl(this);
}
