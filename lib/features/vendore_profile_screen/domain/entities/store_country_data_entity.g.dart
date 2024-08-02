// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_country_data_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreCountryDataEntityCWProxy {
  StoreCountryDataEntity id(int id);

  StoreCountryDataEntity iso(String iso);

  StoreCountryDataEntity name(String name);

  StoreCountryDataEntity nicename(String nicename);

  StoreCountryDataEntity iso3(String iso3);

  StoreCountryDataEntity numcode(int numcode);

  StoreCountryDataEntity phonecode(int phonecode);

  StoreCountryDataEntity isActive(int isActive);

  StoreCountryDataEntity createdAt(DateTime createdAt);

  StoreCountryDataEntity updatedAt(DateTime updatedAt);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCountryDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCountryDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCountryDataEntity call({
    int? id,
    String? iso,
    String? name,
    String? nicename,
    String? iso3,
    int? numcode,
    int? phonecode,
    int? isActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreCountryDataEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreCountryDataEntity.copyWith.fieldName(...)`
class _$StoreCountryDataEntityCWProxyImpl
    implements _$StoreCountryDataEntityCWProxy {
  const _$StoreCountryDataEntityCWProxyImpl(this._value);

  final StoreCountryDataEntity _value;

  @override
  StoreCountryDataEntity id(int id) => this(id: id);

  @override
  StoreCountryDataEntity iso(String iso) => this(iso: iso);

  @override
  StoreCountryDataEntity name(String name) => this(name: name);

  @override
  StoreCountryDataEntity nicename(String nicename) => this(nicename: nicename);

  @override
  StoreCountryDataEntity iso3(String iso3) => this(iso3: iso3);

  @override
  StoreCountryDataEntity numcode(int numcode) => this(numcode: numcode);

  @override
  StoreCountryDataEntity phonecode(int phonecode) => this(phonecode: phonecode);

  @override
  StoreCountryDataEntity isActive(int isActive) => this(isActive: isActive);

  @override
  StoreCountryDataEntity createdAt(DateTime createdAt) =>
      this(createdAt: createdAt);

  @override
  StoreCountryDataEntity updatedAt(DateTime updatedAt) =>
      this(updatedAt: updatedAt);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCountryDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCountryDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCountryDataEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? iso = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? nicename = const $CopyWithPlaceholder(),
    Object? iso3 = const $CopyWithPlaceholder(),
    Object? numcode = const $CopyWithPlaceholder(),
    Object? phonecode = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
  }) {
    return StoreCountryDataEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      iso: iso == const $CopyWithPlaceholder() || iso == null
          ? _value.iso
          // ignore: cast_nullable_to_non_nullable
          : iso as String,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      nicename: nicename == const $CopyWithPlaceholder() || nicename == null
          ? _value.nicename
          // ignore: cast_nullable_to_non_nullable
          : nicename as String,
      iso3: iso3 == const $CopyWithPlaceholder() || iso3 == null
          ? _value.iso3
          // ignore: cast_nullable_to_non_nullable
          : iso3 as String,
      numcode: numcode == const $CopyWithPlaceholder() || numcode == null
          ? _value.numcode
          // ignore: cast_nullable_to_non_nullable
          : numcode as int,
      phonecode: phonecode == const $CopyWithPlaceholder() || phonecode == null
          ? _value.phonecode
          // ignore: cast_nullable_to_non_nullable
          : phonecode as int,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as int,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
    );
  }
}

extension $StoreCountryDataEntityCopyWith on StoreCountryDataEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreCountryDataEntity.copyWith(...)` or like so:`instanceOfStoreCountryDataEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreCountryDataEntityCWProxy get copyWith =>
      _$StoreCountryDataEntityCWProxyImpl(this);
}
