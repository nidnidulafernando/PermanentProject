import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

part 'vendor_parent_company_datum.g.dart';

@CopyWith()
class VendorParentCompanyDatumEntity extends Equatable {
  final int id;
  final int parentCompanyId;
  final String name;
  final String address;
  final int rating;
  final String description;
  final String profileImg;
  final String coverImg;

  const VendorParentCompanyDatumEntity({
    required this.id,
    required this.parentCompanyId,
    required this.name,
    required this.address,
    required this.rating,
    required this.description,
    required this.profileImg,
    required this.coverImg,
  });

  @override
  List<Object> get props => [
        id,
        parentCompanyId,
        name,
        address,
        rating,
        description,
        profileImg,
        coverImg,
      ];
}
