import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_coupon_package_datum_entity.dart';

part 'store_coupon_entity.g.dart';

@CopyWith()
class StoreCouponEntity extends Equatable {
  final int id;
  final String title;
  final dynamic subtitle;
  final String description;
  final int parentCompanyId;
  final int value;
  final String valueType;
  final int systemMaxSlash;
  final int customerMaxSlash;
  final int minSaving;
  final int maxSaving;
  final DateTime validFrom;
  final DateTime validTo;
  final dynamic moreInfo;
  final String termsConditions;
  final int isActive;
  final int isSpecialCoupon;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int isLimited;
  final String couponTags;
  final int isUser;
  final int isForEveryone;
  final int isAvailableForExpired;
  final int hasFavorited;
  final String thumbnail;
  final List<StoreCouponPackagesDatumStore> couponPackagesData;
  final List<dynamic> media;

  const StoreCouponEntity({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.parentCompanyId,
    required this.value,
    required this.valueType,
    required this.systemMaxSlash,
    required this.customerMaxSlash,
    required this.minSaving,
    required this.maxSaving,
    required this.validFrom,
    required this.validTo,
    required this.moreInfo,
    required this.termsConditions,
    required this.isActive,
    required this.isSpecialCoupon,
    required this.createdAt,
    required this.updatedAt,
    required this.isLimited,
    required this.couponTags,
    required this.isUser,
    required this.isForEveryone,
    required this.isAvailableForExpired,
    required this.hasFavorited,
    required this.thumbnail,
    required this.couponPackagesData,
    required this.media,
  });

  @override
  List<Object> get props => [
        id,
        title,
        subtitle,
        description,
        parentCompanyId,
        value,
        valueType,
        systemMaxSlash,
        customerMaxSlash,
        minSaving,
        maxSaving,
        validFrom,
        validTo,
        moreInfo,
        termsConditions,
        isActive,
        isSpecialCoupon,
        createdAt,
        updatedAt,
        isLimited,
        couponTags,
        isUser,
        isForEveryone,
        isAvailableForExpired,
        hasFavorited,
        thumbnail,
        couponPackagesData,
        media,
      ];
}
