import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/explore_screen/domain/entities/vendor_parent_company_datum.dart';

part 'vendor_entity.g.dart';

@CopyWith()
class VendorEntity extends Equatable {
  final String status;
  final List<VendorParentCompanyDatumEntity> parentCompanyData;

  const VendorEntity({
    required this.status,
    required this.parentCompanyData,
  });

  @override
  List<Object> get props => [status, parentCompanyData];
}
