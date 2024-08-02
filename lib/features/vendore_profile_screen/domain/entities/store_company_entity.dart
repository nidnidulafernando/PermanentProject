import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_media_entity.dart';

part 'store_company_entity.g.dart';

@CopyWith()
class StoreCompanyEntity extends Equatable {
  final int id;
  final int parentCompanyId;
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
  final double locationLat;
  final double locationLng;
  final String code;
  final int isActive;
  final int updatedBy;
  final DateTime createdAt;
  final DateTime updatedAt;
  final String profileImg;
  final String coverImg;
  final List<StoreMediaEntity> media;

  const StoreCompanyEntity({
    required this.id,
    required this.parentCompanyId,
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
    required this.locationLat,
    required this.locationLng,
    required this.code,
    required this.isActive,
    required this.updatedBy,
    required this.createdAt,
    required this.updatedAt,
    required this.profileImg,
    required this.coverImg,
    required this.media,
  });

  @override
  List<Object> get props => [
        id,
        parentCompanyId,
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
        locationLat,
        locationLng,
        code,
        isActive,
        updatedBy,
        createdAt,
        updatedAt,
        profileImg,
        coverImg,
        media,
      ];
}
