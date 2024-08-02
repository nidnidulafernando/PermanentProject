part of 'coupon_bloc.dart';

enum CouponStatus { initial, loading, success, failure }

class CouponState extends Equatable {
  final CouponStatus status;

  final List<CouponDataEntity>? couponData;
  final String? errorMessage;

  const CouponState({
    this.status = CouponStatus.initial,
    this.couponData,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
        status,
        couponData,
        errorMessage,
      ];

  CouponState copyWith({
    CouponStatus? status,
    List<CouponDataEntity>? couponData,
    String? errorMessage,
  }) {
    return CouponState(
      status: status ?? this.status,
      couponData: couponData ?? this.couponData,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
