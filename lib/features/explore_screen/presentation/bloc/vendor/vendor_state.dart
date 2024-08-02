part of 'vendor_bloc.dart';

enum VendorStatus { initial, loading, success, failure }

class VendorState extends Equatable {
  final VendorStatus status;

  final List<VendorParentCompanyDatumEntity>? vendorData;
  final String? errorMessage;

  const VendorState({
    this.status = VendorStatus.initial,
    this.vendorData,
    this.errorMessage,
  });

  @override
  List<Object?> get props => [
        status,
        vendorData,
        errorMessage,
      ];

  VendorState copyWith({
    VendorStatus? status,
    List<VendorParentCompanyDatumEntity>? vendorData,
    String? errorMessage,
  }) {
    return VendorState(
      status: status ?? this.status,
      vendorData: vendorData ?? this.vendorData,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
