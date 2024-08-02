// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vendor_parent_company_datum.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$VendorParentCompanyDatumEntityCWProxy {
  VendorParentCompanyDatumEntity id(int id);

  VendorParentCompanyDatumEntity parentCompanyId(int parentCompanyId);

  VendorParentCompanyDatumEntity name(String name);

  VendorParentCompanyDatumEntity address(String address);

  VendorParentCompanyDatumEntity rating(int rating);

  VendorParentCompanyDatumEntity description(String description);

  VendorParentCompanyDatumEntity profileImg(String profileImg);

  VendorParentCompanyDatumEntity coverImg(String coverImg);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorParentCompanyDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorParentCompanyDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorParentCompanyDatumEntity call({
    int? id,
    int? parentCompanyId,
    String? name,
    String? address,
    int? rating,
    String? description,
    String? profileImg,
    String? coverImg,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfVendorParentCompanyDatumEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfVendorParentCompanyDatumEntity.copyWith.fieldName(...)`
class _$VendorParentCompanyDatumEntityCWProxyImpl
    implements _$VendorParentCompanyDatumEntityCWProxy {
  const _$VendorParentCompanyDatumEntityCWProxyImpl(this._value);

  final VendorParentCompanyDatumEntity _value;

  @override
  VendorParentCompanyDatumEntity id(int id) => this(id: id);

  @override
  VendorParentCompanyDatumEntity parentCompanyId(int parentCompanyId) =>
      this(parentCompanyId: parentCompanyId);

  @override
  VendorParentCompanyDatumEntity name(String name) => this(name: name);

  @override
  VendorParentCompanyDatumEntity address(String address) =>
      this(address: address);

  @override
  VendorParentCompanyDatumEntity rating(int rating) => this(rating: rating);

  @override
  VendorParentCompanyDatumEntity description(String description) =>
      this(description: description);

  @override
  VendorParentCompanyDatumEntity profileImg(String profileImg) =>
      this(profileImg: profileImg);

  @override
  VendorParentCompanyDatumEntity coverImg(String coverImg) =>
      this(coverImg: coverImg);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `VendorParentCompanyDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// VendorParentCompanyDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  VendorParentCompanyDatumEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? parentCompanyId = const $CopyWithPlaceholder(),
    Object? name = const $CopyWithPlaceholder(),
    Object? address = const $CopyWithPlaceholder(),
    Object? rating = const $CopyWithPlaceholder(),
    Object? description = const $CopyWithPlaceholder(),
    Object? profileImg = const $CopyWithPlaceholder(),
    Object? coverImg = const $CopyWithPlaceholder(),
  }) {
    return VendorParentCompanyDatumEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      parentCompanyId: parentCompanyId == const $CopyWithPlaceholder() ||
              parentCompanyId == null
          ? _value.parentCompanyId
          // ignore: cast_nullable_to_non_nullable
          : parentCompanyId as int,
      name: name == const $CopyWithPlaceholder() || name == null
          ? _value.name
          // ignore: cast_nullable_to_non_nullable
          : name as String,
      address: address == const $CopyWithPlaceholder() || address == null
          ? _value.address
          // ignore: cast_nullable_to_non_nullable
          : address as String,
      rating: rating == const $CopyWithPlaceholder() || rating == null
          ? _value.rating
          // ignore: cast_nullable_to_non_nullable
          : rating as int,
      description:
          description == const $CopyWithPlaceholder() || description == null
              ? _value.description
              // ignore: cast_nullable_to_non_nullable
              : description as String,
      profileImg:
          profileImg == const $CopyWithPlaceholder() || profileImg == null
              ? _value.profileImg
              // ignore: cast_nullable_to_non_nullable
              : profileImg as String,
      coverImg: coverImg == const $CopyWithPlaceholder() || coverImg == null
          ? _value.coverImg
          // ignore: cast_nullable_to_non_nullable
          : coverImg as String,
    );
  }
}

extension $VendorParentCompanyDatumEntityCopyWith
    on VendorParentCompanyDatumEntity {
  /// Returns a callable class that can be used as follows: `instanceOfVendorParentCompanyDatumEntity.copyWith(...)` or like so:`instanceOfVendorParentCompanyDatumEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$VendorParentCompanyDatumEntityCWProxy get copyWith =>
      _$VendorParentCompanyDatumEntityCWProxyImpl(this);
}
