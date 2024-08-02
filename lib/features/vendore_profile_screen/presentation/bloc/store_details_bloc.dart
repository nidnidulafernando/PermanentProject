import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import '../../../../core/blocs/event_transformer.dart';
import '../../../../core/errors/failures.dart';
import '../../domain/entities/store_company_data_entity.dart';
import '../../domain/entities/store_entity.dart';
import '../../domain/usecase/store_usecase.dart';

part 'store_details_event.dart';
part 'store_details_state.dart';

class StoreDetailsBloc extends Bloc<StoreDetailsEvent, StoreDetailsState> {
  final GetStoreDetails getStoreDetails;

  StoreDetailsBloc({required this.getStoreDetails}) : super(const StoreDetailsState()) {
    on<GetStoreDetailsEvent>(_onCompleteStoreDetailsEvent, transformer: Transformer.throttleDroppable());
  }

  Future<void> _onCompleteStoreDetailsEvent(GetStoreDetailsEvent event, Emitter<StoreDetailsState> emit) async {
    if (event.isRefresh) {
      emit(state.copyWith(
        status: StoreDetailsStatus.loading,
      ));
    }

    Either<Failure, StoreEntity> result = await getStoreDetails(event.parentCompanyId);
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
          status: StoreDetailsStatus.failure,
          errorMessage: message,
        ));
      },
      (dataList) {
        emit(state.copyWith(
          status: StoreDetailsStatus.success,
          storeData: dataList.companyData,
        ));
      },
    );
  }
}
