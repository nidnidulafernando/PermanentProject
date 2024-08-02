// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_data_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreDataEntityCWProxy {
  StoreDataEntity id(int id);

  StoreDataEntity provinceId(int provinceId);

  StoreDataEntity nameEn(String nameEn);

  StoreDataEntity nameSi(String nameSi);

  StoreDataEntity nameTa(String nameTa);

  StoreDataEntity isActive(int isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreDataEntity call({
    int? id,
    int? provinceId,
    String? nameEn,
    String? nameSi,
    String? nameTa,
    int? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreDataEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreDataEntity.copyWith.fieldName(...)`
class _$StoreDataEntityCWProxyImpl implements _$StoreDataEntityCWProxy {
  const _$StoreDataEntityCWProxyImpl(this._value);

  final StoreDataEntity _value;

  @override
  StoreDataEntity id(int id) => this(id: id);

  @override
  StoreDataEntity provinceId(int provinceId) => this(provinceId: provinceId);

  @override
  StoreDataEntity nameEn(String nameEn) => this(nameEn: nameEn);

  @override
  StoreDataEntity nameSi(String nameSi) => this(nameSi: nameSi);

  @override
  StoreDataEntity nameTa(String nameTa) => this(nameTa: nameTa);

  @override
  StoreDataEntity isActive(int isActive) => this(isActive: isActive);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreDataEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? provinceId = const $CopyWithPlaceholder(),
    Object? nameEn = const $CopyWithPlaceholder(),
    Object? nameSi = const $CopyWithPlaceholder(),
    Object? nameTa = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return StoreDataEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      provinceId:
          provinceId == const $CopyWithPlaceholder() || provinceId == null
              ? _value.provinceId
              // ignore: cast_nullable_to_non_nullable
              : provinceId as int,
      nameEn: nameEn == const $CopyWithPlaceholder() || nameEn == null
          ? _value.nameEn
          // ignore: cast_nullable_to_non_nullable
          : nameEn as String,
      nameSi: nameSi == const $CopyWithPlaceholder() || nameSi == null
          ? _value.nameSi
          // ignore: cast_nullable_to_non_nullable
          : nameSi as String,
      nameTa: nameTa == const $CopyWithPlaceholder() || nameTa == null
          ? _value.nameTa
          // ignore: cast_nullable_to_non_nullable
          : nameTa as String,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as int,
    );
  }
}

extension $StoreDataEntityCopyWith on StoreDataEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreDataEntity.copyWith(...)` or like so:`instanceOfStoreDataEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreDataEntityCWProxy get copyWith => _$StoreDataEntityCWProxyImpl(this);
}
