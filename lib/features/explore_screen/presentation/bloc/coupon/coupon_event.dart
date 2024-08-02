part of 'coupon_bloc.dart';

abstract class CouponEvent extends Equatable {
  const CouponEvent();

  @override
  List<Object> get props => [];
}

class GetCoupons extends CouponEvent {
  final int categoryId;
  final bool isRefresh;

  const GetCoupons(this.categoryId, {this.isRefresh = false});

  @override
  List<Object> get props => [categoryId, isRefresh];
}
