part of 'vendor_bloc.dart';

abstract class VendorEvent extends Equatable {
  const VendorEvent();

  @override
  List<Object> get props => [];
}

class GetVendors extends VendorEvent {
  final int categoryId;
  final bool isRefresh;

  const GetVendors(this.categoryId, {this.isRefresh = false});

  @override
  List<Object> get props => [categoryId, isRefresh];
}
