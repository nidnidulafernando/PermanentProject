import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_city_data_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_company_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_country_data_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_coupon_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_data_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_img_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_media_entity.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_parent_com_category_datum.dart';

part 'store_company_data_entity.g.dart';

@CopyWith()
class StoreCompanyDataEntity extends Equatable {
  final int id;
  final String name;
  final dynamic subName;
  final String description;
  final String addressLineOne;
  final int city;
  final int district;
  final int province;
  final int country;
  final int postalCode;
  final String website;
  final dynamic menuLink;
  final String hotlineNumber;
  final dynamic phoneNumberOne;
  final dynamic phoneNumberTwo;
  final int isActive;
  final int updatedBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String facebook;
  final dynamic instagram;
  final String vendorContactEmail;
  final String tags;
  final dynamic termsConditions;
  final String siteUrl;
  final String profileImg;
  final String coverImg;
  final List<StoreImgEntity> menuImg;
  final int rating;
  final List<StoreImgEntity> bannerImg;
  final List<StoreCompanyEntity> company;
  final List<StoreParentComCategoryDatumEntity> parentComCategoryData;
  final StoreCityDataEntity cityData;
  final StoreDataEntity districtData;
  final StoreDataEntity provinceData;
  final StoreCountryDataEntity countryData;
  final dynamic socialLinks;
  final List<StoreCouponEntity> coupons;
  final List<StoreMediaEntity> media;

  const StoreCompanyDataEntity({
    required this.id,
    required this.name,
    required this.subName,
    required this.description,
    required this.addressLineOne,
    required this.city,
    required this.district,
    required this.province,
    required this.country,
    required this.postalCode,
    required this.website,
    required this.menuLink,
    required this.hotlineNumber,
    required this.phoneNumberOne,
    required this.phoneNumberTwo,
    required this.isActive,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.facebook,
    required this.instagram,
    required this.vendorContactEmail,
    required this.tags,
    required this.termsConditions,
    required this.siteUrl,
    required this.profileImg,
    required this.coverImg,
    required this.menuImg,
    required this.rating,
    required this.bannerImg,
    required this.company,
    required this.parentComCategoryData,
    required this.cityData,
    required this.districtData,
    required this.provinceData,
    required this.countryData,
    required this.socialLinks,
    required this.coupons,
    required this.media,
  });

  @override
  List<Object> get props => [
        id,
        name,
        subName,
        description,
        addressLineOne,
        city,
        district,
        province,
        country,
        postalCode,
        website,
        menuLink,
        hotlineNumber,
        phoneNumberOne,
        phoneNumberTwo,
        isActive,
        updatedBy,
        createdAt,
        updatedAt,
        facebook,
        instagram,
        vendorContactEmail,
        tags,
        termsConditions,
        siteUrl,
        profileImg,
        coverImg,
        menuImg,
        rating,
        bannerImg,
        company,
        parentComCategoryData,
        cityData,
        districtData,
        provinceData,
        countryData,
        socialLinks,
        coupons,
        media,
      ];
}
