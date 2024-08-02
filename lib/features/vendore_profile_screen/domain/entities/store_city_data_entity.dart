import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'store_city_data_entity.g.dart';

@CopyWith()
class StoreCityDataEntity extends Equatable {
  final int id;
  final int districtId;
  final String nameEn;
  final String nameSi;
  final dynamic nameTa;
  final dynamic subNameEn;
  final dynamic subNameSi;
  final dynamic subNameTa;
  final String postcode;
  final double latitude;
  final double longitude;
  final int isActive;

  const StoreCityDataEntity({
    required this.id,
    required this.districtId,
    required this.nameEn,
    required this.nameSi,
    required this.nameTa,
    required this.subNameEn,
    required this.subNameSi,
    required this.subNameTa,
    required this.postcode,
    required this.latitude,
    required this.longitude,
    required this.isActive,
  });

  @override
  List<Object> get props => [
        id,
        districtId,
        nameEn,
        nameSi,
        nameTa,
        subNameEn,
        subNameSi,
        subNameTa,
        postcode,
        latitude,
        longitude,
        isActive,
      ];
}
