// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_img_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreImgEntityCWProxy {
  StoreImgEntity id(int id);

  StoreImgEntity value(String value);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreImgEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreImgEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreImgEntity call({
    int? id,
    String? value,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreImgEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreImgEntity.copyWith.fieldName(...)`
class _$StoreImgEntityCWProxyImpl implements _$StoreImgEntityCWProxy {
  const _$StoreImgEntityCWProxyImpl(this._value);

  final StoreImgEntity _value;

  @override
  StoreImgEntity id(int id) => this(id: id);

  @override
  StoreImgEntity value(String value) => this(value: value);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreImgEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreImgEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreImgEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? value = const $CopyWithPlaceholder(),
  }) {
    return StoreImgEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      value: value == const $CopyWithPlaceholder() || value == null
          ? _value.value
          // ignore: cast_nullable_to_non_nullable
          : value as String,
    );
  }
}

extension $StoreImgEntityCopyWith on StoreImgEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreImgEntity.copyWith(...)` or like so:`instanceOfStoreImgEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreImgEntityCWProxy get copyWith => _$StoreImgEntityCWProxyImpl(this);
}
