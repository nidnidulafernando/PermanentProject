part of 'store_details_bloc.dart';

abstract class StoreDetailsEvent extends Equatable {
  const StoreDetailsEvent();

  @override
  List<Object> get props => [];
}

class GetStoreDetailsEvent extends StoreDetailsEvent {
  final int parentCompanyId;
  final bool isRefresh;

  const GetStoreDetailsEvent(this.parentCompanyId, {this.isRefresh = false});

  @override
  List<Object> get props => [parentCompanyId, isRefresh];
}
