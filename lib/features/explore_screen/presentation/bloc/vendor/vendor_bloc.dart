import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../../core/errors/failures.dart';
import '../../../domain/entities/vendor_entity.dart';
import '../../../domain/entities/vendor_parent_company_datum.dart';
import '../../../domain/usecase/vendor_usecase.dart';
import '../../../../../core/blocs/event_transformer.dart';

part 'vendor_event.dart';
part 'vendor_state.dart';

class VendorBloc extends Bloc<VendorEvent, VendorState> {
  final GetVendorsByCategory getVendorsByCategory;

  VendorBloc({required this.getVendorsByCategory}) : super(const VendorState()) {
    on<GetVendors>(_onCompleteVendorEvent, transformer: Transformer.throttleDroppable());
  }
  Future<void> _onCompleteVendorEvent(GetVendors event, Emitter<VendorState> emit) async {
    if (event.isRefresh) {
      emit(state.copyWith(
        status: VendorStatus.loading,
      ));
    }

    Either<Failure, VendorEntity> result = await getVendorsByCategory(event.categoryId);
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
          status: VendorStatus.failure,
          errorMessage: message,
        ));
      },
      (dataList) {
        emit(state.copyWith(
          status: VendorStatus.success,
          vendorData: dataList.parentCompanyData,
        ));
      },
    );
  }
}
