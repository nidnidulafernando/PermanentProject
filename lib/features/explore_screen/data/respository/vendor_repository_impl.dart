import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/vendor_entity.dart';
import '../../domain/repository/vendor_repository.dart';
import '../datasource/coupon_vendor_remote_datasource.dart';
import 'package:dartz/dartz.dart';

class VendorRepositoryImpl implements VendorRepository {
  final CouponVendorRemoteDataSource vendorRemoteDataSource;
  final NetworkInfo networkInfo;
  VendorRepositoryImpl({
    required this.vendorRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, VendorEntity>> getVendorsByCategory(int categoryId) async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final data = await vendorRemoteDataSource.getVendorsByCategory(categoryId);
        return Right(data.toEntity());
      } on ServerException catch (serverException) {
        return Left(ServerFailure(message: serverException.errorMessage));
      }
    } else {
      return const Left(NoConnectionFailure(message: 'No Connection'));
    }
  }
}
