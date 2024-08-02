import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_company_data_entity.dart';

part 'store_entity.g.dart';

@CopyWith()
class StoreEntity extends Equatable {
  final String status;
  final StoreCompanyDataEntity companyData;
  final dynamic subscribedPackage;
  final List<dynamic> slashedCoupons;
  final List<dynamic> userSpecificCoupons;

  const StoreEntity({
    required this.status,
    required this.companyData,
    required this.subscribedPackage,
    required this.slashedCoupons,
    required this.userSpecificCoupons,
  });

  @override
  List<Object> get props => [
        status,
        companyData,
        subscribedPackage,
        slashedCoupons,
        userSpecificCoupons,
      ];
}
