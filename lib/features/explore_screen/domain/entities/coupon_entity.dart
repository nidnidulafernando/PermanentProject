import 'package:equatable/equatable.dart';
import 'package:copy_with_extension/copy_with_extension.dart';

import 'coupon_data_entity.dart';

part 'coupon_entity.g.dart';

@CopyWith()
class CouponEntity extends Equatable {
  final String status;
  final List<CouponDataEntity> coupons;
  final dynamic subscribedPackage;

  const CouponEntity({
    required this.status,
    required this.coupons,
    required this.subscribedPackage,
  });

  @override
  List<Object> get props => [status, coupons, subscribedPackage];
}
