// To parse this JSON data, do
//
//     final couponModel = couponModelFromJson(jsonString);

import 'package:equatable/equatable.dart';
import 'dart:convert';

import '../../domain/entities/coupon_data_entity.dart';
import '../../domain/entities/coupon_entity.dart';
import '../../domain/entities/coupon_packages_data_entity.dart';
import '../../domain/entities/coupon_packages_datum_entity.dart';

CouponModel couponModelFromJson(String str) => CouponModel.fromJson(json.decode(str));

String couponModelToJson(CouponModel data) => json.encode(data.toJson());

class CouponModel extends Equatable {
  final String? status;
  final List<Coupon>? coupons;
  final dynamic subscribedPackage;

  const CouponModel({
     this.status,
     this.coupons,
     this.subscribedPackage,
  });

  factory CouponModel.fromJson(Map<String, dynamic> json) =>
      CouponModel(
        status: json["status"],
        coupons: List<Coupon>.from(json["coupons"].map((x) => Coupon.fromJson(x))),
        subscribedPackage: json["subscribedPackage"],
      );

  Map<String, dynamic> toJson() =>
      {
        "status": status,
        "coupons": List<dynamic>.from(coupons!.map((x) => x.toJson())),
        "subscribedPackage": subscribedPackage,
      };

  @override
  List<Object?> get props => [status, coupons, subscribedPackage];

  CouponEntity toEntity() {
    return CouponEntity(
        status: status ?? "False",
        subscribedPackage: subscribedPackage ?? "",
        coupons: List.from(
          (coupons ?? []).map(
                (coupons) {
              return CouponDataEntity(
                  description: coupons.description ?? "N/A",
                  value: coupons.value ?? -9999,
                  parentCompanyId: coupons.parentCompanyId ?? -9999,
                  id: coupons.id ?? -9999,
                  minSaving: coupons.maxSaving ?? 0,
                  maxSaving: coupons.minSaving ?? 0,
                  isLimited: coupons.isLimited ?? 0,
                  isAvailableForExpired: coupons.isAvailableForExpired ?? 0,
                  hasFavorited: coupons.hasFavorited ?? 0,
                  parentCompanyCoverImg: coupons.parentCompanyCoverImg ?? "",
                  parentCompanyProfileImg: coupons.parentCompanyProfileImg ?? "",
                  parentCompanyName: coupons.parentCompanyName ?? "N/A",
                  title: coupons.title ?? "N/A",
                  valueType: coupons.valueType ?? "N/A",
                  validTo: coupons.validTo ?? DateTime(2024),
                  validFrom: coupons.validFrom ?? DateTime(2024),
                  couponPackagesData: List.from(
                    (coupons.couponPackagesData ?? []).map(
                          (couponPackagesData) {
                        return CouponPackagesDatumEntity(
                            id: couponPackagesData.id ?? -99999,
                            couponId: couponPackagesData.couponId ?? -99999,
                            packageId: couponPackagesData.packageId ?? -99999,
                            updatedAt: couponPackagesData.updatedAt ?? DateTime(2024),
                            createdAt: couponPackagesData.createdAt ?? DateTime(2024),
                            deletedAt: couponPackagesData.deletedAt ?? "N/A",
                            packageData: CouponPackageDataEntity(
                              id: couponPackagesData.packageData!.id ?? -9999,
                              isActive: couponPackagesData.packageData!.isActive ?? 0,
                              installmentAmount:  couponPackagesData.packageData!.installmentAmount ?? 0,
                              isHidden: couponPackagesData.packageData!.isHidden ?? 0,
                              isInstallment: couponPackagesData.packageData!.isInstallment ?? 0,
                              isOneTimeUsage:  couponPackagesData.packageData!.isOneTimeUsage ?? 0,
                              updatedBy:  couponPackagesData.packageData!.updatedBy ?? 0,
                              validDuration:   couponPackagesData.packageData!.validDuration ?? 0,
                              value:   couponPackagesData.packageData!.value ?? 0,
                              updatedAt:    couponPackagesData.packageData!.updatedAt ?? DateTime(2024),
                              createdAt:     couponPackagesData.packageData!.createdAt ?? DateTime(2024),
                              name:      couponPackagesData.packageData!.name ?? "N/A",
                              description:      couponPackagesData.packageData!.description ?? "N/A",
                              moreInfoUrl:      couponPackagesData.packageData!.moreInfoUrl ?? "N/A",
                              currencyCode:       couponPackagesData.packageData!.currencyCode ?? "N/A",
                              moreInfo:        couponPackagesData.packageData!.moreInfo ?? "N/A",
                              termsConditions:        couponPackagesData.packageData!.termsConditions ?? "N/A",
                              zohoItemId:         couponPackagesData.packageData!.zohoItemId ?? "N/A",
                              zohoItemCode:          couponPackagesData.packageData!.zohoItemId ?? "N/A",
                              packageColor:      couponPackagesData.packageData!.packageColor ?? "#000000",
                            )
                        );
                      },
                    ),

                  )

              );
            },
          ),

        )
    );
  }

}

class Coupon extends Equatable {
  final int? id;
  final String? title;
  final String? description;
  final int? value;
  final String? valueType;
  final int? minSaving;
  final int? maxSaving;
  final DateTime? validFrom;
  final DateTime? validTo;
  final int? isLimited;
  final int? isAvailableForExpired;
  final int? hasFavorited;
  final int? parentCompanyId;
  final String? parentCompanyName;
  final String? parentCompanyProfileImg;
  final String? parentCompanyCoverImg;
  final List<CouponPackagesDatum>? couponPackagesData;

  const Coupon({
     this.id,
     this.title,
     this.description,
     this.value,
     this.valueType,
     this.minSaving,
     this.maxSaving,
     this.validFrom,
     this.validTo,
     this.isLimited,
     this.isAvailableForExpired,
     this.hasFavorited,
     this.parentCompanyId,
     this.parentCompanyName,
     this.parentCompanyProfileImg,
     this.parentCompanyCoverImg,
     this.couponPackagesData,
  });

  factory Coupon.fromJson(Map<String, dynamic> json) =>
      Coupon(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        value: json["value"],
        valueType: json["value_type"],
        minSaving: json["min_saving"],
        maxSaving: json["max_saving"],
        validFrom: DateTime.parse(json["valid_from"]),
        validTo: DateTime.parse(json["valid_to"]),
        isLimited: json["is_limited"],
        isAvailableForExpired: json["is_available_for_expired"],
        hasFavorited: json["hasFavorited"],
        parentCompanyId: json["parent_company_id"],
        parentCompanyName: json["parent_company_name"],
        parentCompanyProfileImg: json["parent_company_profile_img"],
        parentCompanyCoverImg: json["parent_company_cover_img"],
        couponPackagesData: List<CouponPackagesDatum>.from(
            json["coupon_packages_data"].map((x) => CouponPackagesDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "title": title,
        "description": description,
        "value": value,
        "value_type": valueType,
        "min_saving": minSaving,
        "max_saving": maxSaving,
        "valid_from": validFrom!.toIso8601String(),
        "valid_to": validTo!.toIso8601String(),
        "is_limited": isLimited,
        "is_available_for_expired": isAvailableForExpired,
        "hasFavorited": hasFavorited,
        "parent_company_id": parentCompanyId,
        "parent_company_name": parentCompanyName,
        "parent_company_profile_img": parentCompanyProfileImg,
        "parent_company_cover_img": parentCompanyCoverImg,
        "coupon_packages_data": List<dynamic>.from(couponPackagesData!.map((x) => x.toJson())),
      };

  @override
  List<Object?> get props =>
      [
        id,
        title,
        description,
        value,
        valueType,
        minSaving,
        maxSaving,
        validFrom,
        validTo,
        isLimited,
        isAvailableForExpired,
        hasFavorited,
        parentCompanyId,
        parentCompanyName,
        parentCompanyProfileImg,
        parentCompanyCoverImg,
        couponPackagesData,
      ];
}

class CouponPackagesDatum extends Equatable {
  final int? id;
  final int? couponId;
  final int? packageId;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final dynamic deletedAt;
  final PackageData? packageData;

  const CouponPackagesDatum({
     this.id,
     this.couponId,
     this.packageId,
     this.createdAt,
     this.updatedAt,
     this.deletedAt,
     this.packageData,
  });

  factory CouponPackagesDatum.fromJson(Map<String, dynamic> json) =>
      CouponPackagesDatum(
        id: json["id"],
        couponId: json["coupon_id"],
        packageId: json["package_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        deletedAt: json["deleted_at"],
        packageData: PackageData.fromJson(json["package_data"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "coupon_id": couponId,
        "package_id": packageId,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "deleted_at": deletedAt,
        "package_data": packageData!.toJson(),
      };

  @override
  List<Object?> get props => [id, couponId, packageId, createdAt, updatedAt, deletedAt, packageData,];
}

class PackageData extends Equatable {
  final int? id;
  final String? name;
  final int? value;
  final String? currencyCode;
  final int? validDuration;
  final String? description;
  final String? moreInfo;
  final String? moreInfoUrl;
  final String? termsConditions;
  final int? isActive;
  final dynamic zohoItemCode;
  final int? updatedBy;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  final String? packageColor;
  final String? zohoItemId;
  final int? isHidden;
  final int? isOneTimeUsage;
  final int? isInstallment;
  final int? installmentAmount;

  const PackageData({
     this.id,
     this.name,
     this.value,
     this.currencyCode,
     this.validDuration,
     this.description,
     this.moreInfo,
     this.moreInfoUrl,
     this.termsConditions,
     this.isActive,
     this.zohoItemCode,
     this.updatedBy,
     this.createdAt,
     this.updatedAt,
     this.packageColor,
     this.zohoItemId,
     this.isHidden,
     this.isOneTimeUsage,
     this.isInstallment,
     this.installmentAmount,
  });

  factory PackageData.fromJson(Map<String, dynamic> json) =>
      PackageData(
        id: json["id"],
        name: json["name"],
        value: json["value"],
        currencyCode: json["currency_code"],
        validDuration: json["valid_duration"],
        description: json["description"],
        moreInfo: json["more_info"],
        moreInfoUrl: json["more_info_url"],
        termsConditions: json["terms_conditions"],
        isActive: json["is_active"],
        zohoItemCode: json["zoho_item_code"],
        updatedBy: json["updated_by"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        packageColor: json["package_color"],
        zohoItemId: json["zoho_item_id"],
        isHidden: json["is_hidden"],
        isOneTimeUsage: json["is_one_time_usage"],
        isInstallment: json["is_installment"],
        installmentAmount: json["installment_amount"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "name": name,
        "value": value,
        "currency_code": currencyCode,
        "valid_duration": validDuration,
        "description": description,
        "more_info": moreInfo,
        "more_info_url": moreInfoUrl,
        "terms_conditions": termsConditions,
        "is_active": isActive,
        "zoho_item_code": zohoItemCode,
        "updated_by": updatedBy,
        "created_at": createdAt!.toIso8601String(),
        "updated_at": updatedAt!.toIso8601String(),
        "package_color": packageColor,
        "zoho_item_id": zohoItemId,
        "is_hidden": isHidden,
        "is_one_time_usage": isOneTimeUsage,
        "is_installment": isInstallment,
        "installment_amount": installmentAmount,
      };

  @override
  List<Object?> get props =>
      [
        id,
        name,
        value,
        currencyCode,
        validDuration,
        description,
        moreInfo,
        moreInfoUrl,
        termsConditions,
        isActive,
        zohoItemCode,
        updatedBy,
        createdAt,
        updatedAt,
        packageColor,
        zohoItemId,
        isHidden,
        isOneTimeUsage,
        isInstallment,
        installmentAmount,
      ];
}
