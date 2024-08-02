// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'coupon_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$CouponEntityCWProxy {
  CouponEntity status(String status);

  CouponEntity coupons(List<CouponDataEntity> coupons);

  CouponEntity subscribedPackage(dynamic subscribedPackage);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CouponEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CouponEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  CouponEntity call({
    String? status,
    List<CouponDataEntity>? coupons,
    dynamic subscribedPackage,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfCouponEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfCouponEntity.copyWith.fieldName(...)`
class _$CouponEntityCWProxyImpl implements _$CouponEntityCWProxy {
  const _$CouponEntityCWProxyImpl(this._value);

  final CouponEntity _value;

  @override
  CouponEntity status(String status) => this(status: status);

  @override
  CouponEntity coupons(List<CouponDataEntity> coupons) =>
      this(coupons: coupons);

  @override
  CouponEntity subscribedPackage(dynamic subscribedPackage) =>
      this(subscribedPackage: subscribedPackage);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `CouponEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// CouponEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  CouponEntity call({
    Object? status = const $CopyWithPlaceholder(),
    Object? coupons = const $CopyWithPlaceholder(),
    Object? subscribedPackage = const $CopyWithPlaceholder(),
  }) {
    return CouponEntity(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      coupons: coupons == const $CopyWithPlaceholder() || coupons == null
          ? _value.coupons
          // ignore: cast_nullable_to_non_nullable
          : coupons as List<CouponDataEntity>,
      subscribedPackage: subscribedPackage == const $CopyWithPlaceholder() ||
              subscribedPackage == null
          ? _value.subscribedPackage
          // ignore: cast_nullable_to_non_nullable
          : subscribedPackage as dynamic,
    );
  }
}

extension $CouponEntityCopyWith on CouponEntity {
  /// Returns a callable class that can be used as follows: `instanceOfCouponEntity.copyWith(...)` or like so:`instanceOfCouponEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$CouponEntityCWProxy get copyWith => _$CouponEntityCWProxyImpl(this);
}
