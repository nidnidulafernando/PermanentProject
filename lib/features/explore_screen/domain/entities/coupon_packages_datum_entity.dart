import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

import 'coupon_packages_data_entity.dart';

part 'coupon_packages_datum_entity.g.dart';

@CopyWith()
class CouponPackagesDatumEntity extends Equatable {
  final int id;
  final int couponId;
  final int packageId;
  final DateTime createdAt;
  final DateTime updatedAt;
  final dynamic deletedAt;
  final CouponPackageDataEntity packageData;

  const CouponPackagesDatumEntity({
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
