part of 'store_details_bloc.dart';

enum StoreDetailsStatus { initial, loading, success, failure }

class StoreDetailsState extends Equatable {
  final StoreDetailsStatus status;

  final StoreCompanyDataEntity? storeData;
  final String? errorMessage;

  const StoreDetailsState({
    this.status = StoreDetailsStatus.initial,
    this.storeData,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
        status,
        storeData,
        errorMessage,
      ];

  StoreDetailsState copyWith({
    StoreDetailsStatus? status,
    StoreCompanyDataEntity? storeData,
    String? errorMessage,
  }) {
    return StoreDetailsState(
      status: status ?? this.status,
      storeData: storeData ?? this.storeData,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
