// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_coupon_package_datum_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreCouponPackagesDatumStoreCWProxy {
  StoreCouponPackagesDatumStore id(int id);

  StoreCouponPackagesDatumStore couponId(int couponId);

  StoreCouponPackagesDatumStore packageId(int packageId);

  StoreCouponPackagesDatumStore createdAt(DateTime createdAt);

  StoreCouponPackagesDatumStore updatedAt(DateTime updatedAt);

  StoreCouponPackagesDatumStore deletedAt(dynamic deletedAt);

  StoreCouponPackagesDatumStore packageData(StorePackageDataEntity packageData);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCouponPackagesDatumStore(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCouponPackagesDatumStore(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCouponPackagesDatumStore call({
    int? id,
    int? couponId,
    int? packageId,
    DateTime? createdAt,
    DateTime? updatedAt,
    dynamic deletedAt,
    StorePackageDataEntity? packageData,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreCouponPackagesDatumStore.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreCouponPackagesDatumStore.copyWith.fieldName(...)`
class _$StoreCouponPackagesDatumStoreCWProxyImpl
    implements _$StoreCouponPackagesDatumStoreCWProxy {
  const _$StoreCouponPackagesDatumStoreCWProxyImpl(this._value);

  final StoreCouponPackagesDatumStore _value;

  @override
  StoreCouponPackagesDatumStore id(int id) => this(id: id);

  @override
  StoreCouponPackagesDatumStore couponId(int couponId) =>
      this(couponId: couponId);

  @override
  StoreCouponPackagesDatumStore packageId(int packageId) =>
      this(packageId: packageId);

  @override
  StoreCouponPackagesDatumStore createdAt(DateTime createdAt) =>
      this(createdAt: createdAt);

  @override
  StoreCouponPackagesDatumStore updatedAt(DateTime updatedAt) =>
      this(updatedAt: updatedAt);

  @override
  StoreCouponPackagesDatumStore deletedAt(dynamic deletedAt) =>
      this(deletedAt: deletedAt);

  @override
  StoreCouponPackagesDatumStore packageData(
          StorePackageDataEntity packageData) =>
      this(packageData: packageData);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreCouponPackagesDatumStore(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreCouponPackagesDatumStore(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreCouponPackagesDatumStore call({
    Object? id = const $CopyWithPlaceholder(),
    Object? couponId = const $CopyWithPlaceholder(),
    Object? packageId = const $CopyWithPlaceholder(),
    Object? createdAt = const $CopyWithPlaceholder(),
    Object? updatedAt = const $CopyWithPlaceholder(),
    Object? deletedAt = const $CopyWithPlaceholder(),
    Object? packageData = const $CopyWithPlaceholder(),
  }) {
    return StoreCouponPackagesDatumStore(
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
              : packageData as StorePackageDataEntity,
    );
  }
}

extension $StoreCouponPackagesDatumStoreCopyWith
    on StoreCouponPackagesDatumStore {
  /// Returns a callable class that can be used as follows: `instanceOfStoreCouponPackagesDatumStore.copyWith(...)` or like so:`instanceOfStoreCouponPackagesDatumStore.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreCouponPackagesDatumStoreCWProxy get copyWith =>
      _$StoreCouponPackagesDatumStoreCWProxyImpl(this);
}
