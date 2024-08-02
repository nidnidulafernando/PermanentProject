// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_packages_datum_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CouponPackagesDatumEntityCWProxy {
  CouponPackagesDatumEntity id(int id);

  CouponPackagesDatumEntity couponId(int couponId);

  CouponPackagesDatumEntity packageId(int packageId);

  CouponPackagesDatumEntity createdAt(DateTime createdAt);

  CouponPackagesDatumEntity updatedAt(DateTime updatedAt);

  CouponPackagesDatumEntity deletedAt(dynamic deletedAt);

  CouponPackagesDatumEntity packageData(CouponPackageDataEntity packageData);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CouponPackagesDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CouponPackagesDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  CouponPackagesDatumEntity call({
    int? id,
    int? couponId,
    int? packageId,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic deletedAt,
    CouponPackageDataEntity? packageData,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCouponPackagesDatumEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCouponPackagesDatumEntity.copyWith.fieldName(...)`
class _$CouponPackagesDatumEntityCWProxyImpl
    implements _$CouponPackagesDatumEntityCWProxy {
  const _$CouponPackagesDatumEntityCWProxyImpl(this._value);

  final CouponPackagesDatumEntity _value;

  @override
  CouponPackagesDatumEntity id(int id) => this(id: id);

  @override
  CouponPackagesDatumEntity couponId(int couponId) => this(couponId: couponId);

  @override
  CouponPackagesDatumEntity packageId(int packageId) =>
      this(packageId: packageId);

  @override
  CouponPackagesDatumEntity createdAt(DateTime createdAt) =>
      this(createdAt: createdAt);

  @override
  CouponPackagesDatumEntity updatedAt(DateTime updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  CouponPackagesDatumEntity deletedAt(dynamic deletedAt) =>
      this(deletedAt: deletedAt);

  @override
  CouponPackagesDatumEntity packageData(CouponPackageDataEntity packageData) =>
      this(packageData: packageData);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CouponPackagesDatumEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CouponPackagesDatumEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  CouponPackagesDatumEntity call({
    Object? id = const $CopyWithPlaceholder(),
    Object? couponId = const $CopyWithPlaceholder(),
    Object? packageId = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? packageData = const $CopyWithPlaceholder(),
  }) {
    return CouponPackagesDatumEntity(
      id: id == const $CopyWithPlaceholder() || id == null
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as int,
      couponId: couponId == const $CopyWithPlaceholder() || couponId == null
          ? _value.couponId
          // ignore: cast_nullable_to_non_nullable
          : couponId as int,
      packageId: packageId == const $CopyWithPlaceholder() || packageId == null
          ? _value.packageId
          // ignore: cast_nullable_to_non_nullable
          : packageId as int,
      createdAt: createdAt == const $CopyWithPlaceholder() || createdAt == null
          ? _value.createdAt
          // ignore: cast_nullable_to_non_nullable
          : createdAt as DateTime,
      updatedAt: updatedAt == const $CopyWithPlaceholder() || updatedAt == null
          ? _value.updatedAt
          // ignore: cast_nullable_to_non_nullable
          : updatedAt as DateTime,
      deletedAt: deletedAt == const $CopyWithPlaceholder() || deletedAt == null
          ? _value.deletedAt
          // ignore: cast_nullable_to_non_nullable
          : deletedAt as dynamic,
      packageData:
          packageData == const $CopyWithPlaceholder() || packageData == null
              ? _value.packageData
              // ignore: cast_nullable_to_non_nullable
              : packageData as CouponPackageDataEntity,
    );
  }
}

extension $CouponPackagesDatumEntityCopyWith on CouponPackagesDatumEntity {
  /// Returns a callable class that can be used as follows: `instanceOfCouponPackagesDatumEntity.copyWith(...)` or like so:`instanceOfCouponPackagesDatumEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CouponPackagesDatumEntityCWProxy get copyWith =>
      _$CouponPackagesDatumEntityCWProxyImpl(this);
}
