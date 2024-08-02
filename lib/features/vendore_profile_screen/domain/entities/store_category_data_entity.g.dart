// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_category_data_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreCategoryDataEntityCWProxy {
  StoreCategoryDataEntity id(int id);

  StoreCategoryDataEntity index(int index);

  StoreCategoryDataEntity name(String name);

  StoreCategoryDataEntity description(dynamic description);

  StoreCategoryDataEntity isActive(int isActive);

  StoreCategoryDataEntity updatedBy(dynamic updatedBy);

  StoreCategoryDataEntity createdAt(DateTime createdAt);

  StoreCategoryDataEntity updatedAt(DateTime updatedAt);

  StoreCategoryDataEntity icon(String icon);

  StoreCategoryDataEntity background(String background);

  StoreCategoryDataEntity media(List<StoreMediaEntity> media);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCategoryDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCategoryDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCategoryDataEntity call({
    int? id,
    int? index,
    String? name,
    dynamic description,
    int? isActive,
    dynamic updatedBy,
    DateTime? createdAt,
    DateTime? updatedAt,
    String? icon,
    String? background,
    List<StoreMediaEntity>? media,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreCategoryDataEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreCategoryDataEntity.copyWith.fieldName(...)`
class _$StoreCategoryDataEntityCWProxyImpl
    implements _$StoreCategoryDataEntityCWProxy {
  const _$StoreCategoryDataEntityCWProxyImpl(this._value);

  final StoreCategoryDataEntity _value;

  @override
  StoreCategoryDataEntity id(int id) => this(id: id);

  @override
  StoreCategoryDataEntity index(int index) => this(index: index);

  @override
  StoreCategoryDataEntity name(String name) => this(name: name);

  @override
  StoreCategoryDataEntity description(dynamic description) =>
      this(description: description);

  @override
  StoreCategoryDataEntity isActive(int isActive) => this(isActive: isActive);

  @override
  StoreCategoryDataEntity updatedBy(dynamic updatedBy) =>
      this(updatedBy: updatedBy);

  @override
  StoreCategoryDataEntity createdAt(DateTime createdAt) =>
      this(createdAt: createdAt);

  @override
  StoreCategoryDataEntity updatedAt(DateTime updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  StoreCategoryDataEntity icon(String icon) => this(icon: icon);

  @override
  StoreCategoryDataEntity background(String background) =>
      this(background: background);

  @override
  StoreCategoryDataEntity media(List<StoreMediaEntity> media) =>
      this(media: media);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCategoryDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCategoryDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCategoryDataEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? index = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? updatedBy = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? icon = const $CopyWithPlaceholder(),
    Object? background = const $CopyWithPlaceholder(),
    Object? media = const $CopyWithPlaceholder(),
  }) {
    return StoreCategoryDataEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      index: index == const $CopyWithPlaceholder() || index == null
          ? _value.index
          // ignore: cast_nullable_to_non_nullable
          : index as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as dynamic,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as int,
      updatedBy: updatedBy == const $CopyWithPlaceholder() || updatedBy == null
          ? _value.updatedBy
          // ignore: cast_nullable_to_non_nullable
          : updatedBy as dynamic,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      icon: icon == const $CopyWithPlaceholder() || icon == null
          ? _value.icon
          // ignore: cast_nullable_to_non_nullable
          : icon as String,
      background:
          background == const $CopyWithPlaceholder() || background == null
              ? _value.background
              // ignore: cast_nullable_to_non_nullable
              : background as String,
      media: media == const $CopyWithPlaceholder() || media == null
          ? _value.media
          // ignore: cast_nullable_to_non_nullable
          : media as List<StoreMediaEntity>,
    );
  }
}

extension $StoreCategoryDataEntityCopyWith on StoreCategoryDataEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreCategoryDataEntity.copyWith(...)` or like so:`instanceOfStoreCategoryDataEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreCategoryDataEntityCWProxy get copyWith =>
      _$StoreCategoryDataEntityCWProxyImpl(this);
}
