// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VendorEntityCWProxy {
  VendorEntity status(String status);

  VendorEntity parentCompanyData(
      List<VendorParentCompanyDatumEntity> parentCompanyData);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorEntity call({
    String? status,
    List<VendorParentCompanyDatumEntity>? parentCompanyData,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVendorEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVendorEntity.copyWith.fieldName(...)`
class _$VendorEntityCWProxyImpl implements _$VendorEntityCWProxy {
  const _$VendorEntityCWProxyImpl(this._value);

  final VendorEntity _value;

  @override
  VendorEntity status(String status) => this(status: status);

  @override
  VendorEntity parentCompanyData(
          List<VendorParentCompanyDatumEntity> parentCompanyData) =>
      this(parentCompanyData: parentCompanyData);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorEntity call({
    Object? status = const $CopyWithPlaceholder(),
    Object? parentCompanyData = const $CopyWithPlaceholder(),
  }) {
    return VendorEntity(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      parentCompanyData: parentCompanyData == const $CopyWithPlaceholder() ||
              parentCompanyData == null
          ? _value.parentCompanyData
          // ignore: cast_nullable_to_non_nullable
          : parentCompanyData as List<VendorParentCompanyDatumEntity>,
    );
  }
}

extension $VendorEntityCopyWith on VendorEntity {
  /// Returns a callable class that can be used as follows: `instanceOfVendorEntity.copyWith(...)` or like so:`instanceOfVendorEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VendorEntityCWProxy get copyWith => _$VendorEntityCWProxyImpl(this);
}
