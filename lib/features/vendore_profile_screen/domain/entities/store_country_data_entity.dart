import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'store_country_data_entity.g.dart';

@CopyWith()
class StoreCountryDataEntity extends Equatable {
  final int id;
  final String iso;
  final String name;
  final String nicename;
  final String iso3;
  final int numcode;
  final int phonecode;
  final int isActive;
  final DateTime createdAt;
  final DateTime updatedAt;

  const StoreCountryDataEntity({
    required this.id,
    required this.iso,
    required this.name,
    required this.nicename,
    required this.iso3,
    required this.numcode,
    required this.phonecode,
    required this.isActive,
    required this.createdAt,
    required this.updatedAt,
  });

  @override
  List<Object> get props => [
        id,
        iso,
        name,
        nicename,
        iso3,
        numcode,
        phonecode,
        isActive,
        createdAt,
        updatedAt,
      ];
}
