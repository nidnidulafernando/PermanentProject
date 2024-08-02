// To parse this JSON data, do
//
//     final vendorModel = vendorModelFromJson(jsonString);

import 'package:equatable/equatable.dart';
import 'dart:convert';

import '../../domain/entities/vendor_entity.dart';
import '../../domain/entities/vendor_parent_company_datum.dart';

VendorModel vendorModelFromJson(String str) => VendorModel.fromJson(json.decode(str));

String vendorModelToJson(VendorModel data) => json.encode(data.toJson());

class VendorModel extends Equatable {
  final String? status;
  final List<ParentCompanyDatum>? parentCompanyData;

  const VendorModel({
     this.status,
     this.parentCompanyData,
  });

  factory VendorModel.fromJson(Map<String, dynamic> json) =>
      VendorModel(
        status: json["status"],
        parentCompanyData: List<ParentCompanyDatum>.from(
            json["parentCompanyData"].map((x) => ParentCompanyDatum.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "status": status,
        "parentCompanyData": List<dynamic>.from(parentCompanyData!.map((x) => x.toJson())),
      };

  @override
  List<Object?> get props => [status, parentCompanyData];

  VendorEntity toEntity(){
    return VendorEntity(
      status: status ?? "failed",
      parentCompanyData: List.from(
        (parentCompanyData ?? []).map(
              (parentCompanyData) {
            return VendorParentCompanyDatumEntity(
              id: parentCompanyData.id ?? -99999,
              parentCompanyId: parentCompanyData.parentCompanyId ?? -9999,
              rating: parentCompanyData.rating ?? 0,
              description: parentCompanyData.description ?? "N/A",
              name: parentCompanyData.name ?? "N/A",
              address: parentCompanyData.address ?? "N/A",
              coverImg:  parentCompanyData.coverImg ?? "N/A",
              profileImg:   parentCompanyData.profileImg ?? "",
            );
          },
        ),

      ),
    );
  }
}

class ParentCompanyDatum extends Equatable {
  final int? id;
  final int? parentCompanyId;
  final String? name;
  final String? address;
  final int? rating;
  final String? description;
  final String? profileImg;
  final String? coverImg;

  const ParentCompanyDatum({
     this.id,
     this.parentCompanyId,
     this.name,
     this.address,
     this.rating,
     this.description,
     this.profileImg,
     this.coverImg,
  });

  factory ParentCompanyDatum.fromJson(Map<String, dynamic> json) =>
      ParentCompanyDatum(
        id: json["id"],
        parentCompanyId: json["parent_company_id"],
        name: json["name"],
        address: json["address"],
        rating: json["rating"],
        description: json["description"],
        profileImg: json["profile_img"],
        coverImg: json["cover_img"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id,
        "parent_company_id": parentCompanyId,
        "name": name,
        "address": address,
        "rating": rating,
        "description": description,
        "profile_img": profileImg,
        "cover_img": coverImg,
      };

  @override
  List<Object?> get props => [id, parentCompanyId, name, address, rating, description, profileImg, coverImg,];
}
