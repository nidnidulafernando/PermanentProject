// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store_entity.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$StoreEntityCWProxy {
  StoreEntity status(String status);

  StoreEntity companyData(StoreCompanyDataEntity companyData);

  StoreEntity subscribedPackage(dynamic subscribedPackage);

  StoreEntity slashedCoupons(List<dynamic> slashedCoupons);

  StoreEntity userSpecificCoupons(List<dynamic> userSpecificCoupons);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreEntity call({
    String? status,
    StoreCompanyDataEntity? companyData,
    dynamic subscribedPackage,
    List<dynamic>? slashedCoupons,
    List<dynamic>? userSpecificCoupons,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfStoreEntity.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfStoreEntity.copyWith.fieldName(...)`
class _$StoreEntityCWProxyImpl implements _$StoreEntityCWProxy {
  const _$StoreEntityCWProxyImpl(this._value);

  final StoreEntity _value;

  @override
  StoreEntity status(String status) => this(status: status);

  @override
  StoreEntity companyData(StoreCompanyDataEntity companyData) =>
      this(companyData: companyData);

  @override
  StoreEntity subscribedPackage(dynamic subscribedPackage) =>
      this(subscribedPackage: subscribedPackage);

  @override
  StoreEntity slashedCoupons(List<dynamic> slashedCoupons) =>
      this(slashedCoupons: slashedCoupons);

  @override
  StoreEntity userSpecificCoupons(List<dynamic> userSpecificCoupons) =>
      this(userSpecificCoupons: userSpecificCoupons);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `StoreEntity(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// StoreEntity(...).copyWith(id: 12, name: "My name")
  /// ````
  StoreEntity call({
    Object? status = const $CopyWithPlaceholder(),
    Object? companyData = const $CopyWithPlaceholder(),
    Object? subscribedPackage = const $CopyWithPlaceholder(),
    Object? slashedCoupons = const $CopyWithPlaceholder(),
    Object? userSpecificCoupons = const $CopyWithPlaceholder(),
  }) {
    return StoreEntity(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as String,
      companyData:
          companyData == const $CopyWithPlaceholder() || companyData == null
              ? _value.companyData
              // ignore: cast_nullable_to_non_nullable
              : companyData as StoreCompanyDataEntity,
      subscribedPackage: subscribedPackage == const $CopyWithPlaceholder() ||
              subscribedPackage == null
          ? _value.subscribedPackage
          // ignore: cast_nullable_to_non_nullable
          : subscribedPackage as dynamic,
      slashedCoupons: slashedCoupons == const $CopyWithPlaceholder() ||
              slashedCoupons == null
          ? _value.slashedCoupons
          // ignore: cast_nullable_to_non_nullable
          : slashedCoupons as List<dynamic>,
      userSpecificCoupons:
          userSpecificCoupons == const $CopyWithPlaceholder() ||
                  userSpecificCoupons == null
              ? _value.userSpecificCoupons
              // ignore: cast_nullable_to_non_nullable
              : userSpecificCoupons as List<dynamic>,
    );
  }
}

extension $StoreEntityCopyWith on StoreEntity {
  /// Returns a callable class that can be used as follows: `instanceOfStoreEntity.copyWith(...)` or like so:`instanceOfStoreEntity.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$StoreEntityCWProxy get copyWith => _$StoreEntityCWProxyImpl(this);
}
