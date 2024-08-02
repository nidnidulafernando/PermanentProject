import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/coupon_data_entity.dart';
import '../../../domain/entities/coupon_entity.dart';
import '../../../domain/usecase/coupon_usecase.dart';
import '../../../../../core/blocs/event_transformer.dart';

part 'coupon_event.dart';
part 'coupon_state.dart';

class CouponBloc extends Bloc<CouponEvent, CouponState> {
  final GetCouponsByCategory getCouponsByCategory;

  CouponBloc({required this.getCouponsByCategory}) : super(const CouponState()) {
    on<GetCoupons>(_onCompleteCouponEvent, transformer: Transformer.throttleDroppable());
  }

  Future<void> _onCompleteCouponEvent(GetCoupons event, Emitter<CouponState> emit) async {
    if (event.isRefresh) {
      emit(state.copyWith(
        status: CouponStatus.loading,
      ));
    }

    Either<Failure, CouponEntity> result = await getCouponsByCategory(event.categoryId);
    result.fold(
      (failure) {
        String message = '';
        if (failure is ServerFailure) {
          message = failure.message;
        } else if (failure is NoConnectionFailure) {
          message = "Check your internet connection";
        } else {
          message = "Data fetch failed";
        }
        emit(state.copyWith(
          status: CouponStatus.failure,
          errorMessage: message,
        ));
      },
      (dataList) {
        emit(state.copyWith(
          status: CouponStatus.success,
          couponData: dataList.coupons,
        ));
      },
    );
  }
}
