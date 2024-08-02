import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:permanent_project/features/vendore_profile_screen/domain/entities/store_package_data_entity.dart';

part 'store_coupon_package_datum_entity.g.dart';

@CopyWith()
class StoreCouponPackagesDatumStore extends Equatable {
  final int id;
  final int couponId;
  final int packageId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;
  final StorePackageDataEntity packageData;

  const StoreCouponPackagesDatumStore({
    required this.id,
    required this.couponId,
    required this.packageId,
    required this.createdAt,
    required this.updatedAt,
    required this.deletedAt,
    required this.packageData,
  });

  @override
  List<Object> get props => [
        id,
        couponId,
        packageId,
        createdAt,
        updatedAt,
        deletedAt,
        packageData,
      ];
}
