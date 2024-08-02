// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_city_data_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreCityDataEntityCWProxy {
  StoreCityDataEntity id(int id);

  StoreCityDataEntity districtId(int districtId);

  StoreCityDataEntity nameEn(String nameEn);

  StoreCityDataEntity nameSi(String nameSi);

  StoreCityDataEntity nameTa(dynamic nameTa);

  StoreCityDataEntity subNameEn(dynamic subNameEn);

  StoreCityDataEntity subNameSi(dynamic subNameSi);

  StoreCityDataEntity subNameTa(dynamic subNameTa);

  StoreCityDataEntity postcode(String postcode);

  StoreCityDataEntity latitude(double latitude);

  StoreCityDataEntity longitude(double longitude);

  StoreCityDataEntity isActive(int isActive);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCityDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCityDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCityDataEntity call({
    int? id,
    int? districtId,
    String? nameEn,
    String? nameSi,
    dynamic nameTa,
    dynamic subNameEn,
    dynamic subNameSi,
    dynamic subNameTa,
    String? postcode,
    double? latitude,
    double? longitude,
    int? isActive,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreCityDataEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreCityDataEntity.copyWith.fieldName(...)`
class _$StoreCityDataEntityCWProxyImpl implements _$StoreCityDataEntityCWProxy {
  const _$StoreCityDataEntityCWProxyImpl(this._value);

  final StoreCityDataEntity _value;

  @override
  StoreCityDataEntity id(int id) => this(id: id);

  @override
  StoreCityDataEntity districtId(int districtId) =>
      this(districtId: districtId);

  @override
  StoreCityDataEntity nameEn(String nameEn) => this(nameEn: nameEn);

  @override
  StoreCityDataEntity nameSi(String nameSi) => this(nameSi: nameSi);

  @override
  StoreCityDataEntity nameTa(dynamic nameTa) => this(nameTa: nameTa);

  @override
  StoreCityDataEntity subNameEn(dynamic subNameEn) =>
      this(subNameEn: subNameEn);

  @override
  StoreCityDataEntity subNameSi(dynamic subNameSi) =>
      this(subNameSi: subNameSi);

  @override
  StoreCityDataEntity subNameTa(dynamic subNameTa) =>
      this(subNameTa: subNameTa);

  @override
  StoreCityDataEntity postcode(String postcode) => this(postcode: postcode);

  @override
  StoreCityDataEntity latitude(double latitude) => this(latitude: latitude);

  @override
  StoreCityDataEntity longitude(double longitude) => this(longitude: longitude);

  @override
  StoreCityDataEntity isActive(int isActive) => this(isActive: isActive);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCityDataEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCityDataEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCityDataEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? districtId = const $CopyWithPlaceholder(),
    Object? nameEn = const $CopyWithPlaceholder(),
    Object? nameSi = const $CopyWithPlaceholder(),
    Object? nameTa = const $CopyWithPlaceholder(),
    Object? subNameEn = const $CopyWithPlaceholder(),
    Object? subNameSi = const $CopyWithPlaceholder(),
    Object? subNameTa = const $CopyWithPlaceholder(),
    Object? postcode = const $CopyWithPlaceholder(),
    Object? latitude = const $CopyWithPlaceholder(),
    Object? longitude = const $CopyWithPlaceholder(),
    Object? isActive = const $CopyWithPlaceholder(),
  }) {
    return StoreCityDataEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      districtId:
          districtId == const $CopyWithPlaceholder() || districtId == null
              ? _value.districtId
              // ignore: cast_nullable_to_non_nullable
              : districtId as int,
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
          : nameTa as dynamic,
      subNameEn: subNameEn == const $CopyWithPlaceholder() || subNameEn == null
          ? _value.subNameEn
          // ignore: cast_nullable_to_non_nullable
          : subNameEn as dynamic,
      subNameSi: subNameSi == const $CopyWithPlaceholder() || subNameSi == null
          ? _value.subNameSi
          // ignore: cast_nullable_to_non_nullable
          : subNameSi as dynamic,
      subNameTa: subNameTa == const $CopyWithPlaceholder() || subNameTa == null
          ? _value.subNameTa
          // ignore: cast_nullable_to_non_nullable
          : subNameTa as dynamic,
      postcode: postcode == const $CopyWithPlaceholder() || postcode == null
          ? _value.postcode
          // ignore: cast_nullable_to_non_nullable
          : postcode as String,
      latitude: latitude == const $CopyWithPlaceholder() || latitude == null
          ? _value.latitude
          // ignore: cast_nullable_to_non_nullable
          : latitude as double,
      longitude: longitude == const $CopyWithPlaceholder() || longitude == null
          ? _value.longitude
          // ignore: cast_nullable_to_non_nullable
          : longitude as double,
      isActive: isActive == const $CopyWithPlaceholder() || isActive == null
          ? _value.isActive
          // ignore: cast_nullable_to_non_nullable
          : isActive as int,
    );
  }
}

extension $StoreCityDataEntityCopyWith on StoreCityDataEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreCityDataEntity.copyWith(...)` or like so:`instanceOfStoreCityDataEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreCityDataEntityCWProxy get copyWith =>
      _$StoreCityDataEntityCWProxyImpl(this);
}
