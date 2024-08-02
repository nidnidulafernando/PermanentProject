import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/coupon_entity.dart';
import '../../domain/repository/coupon_repository.dart';
import '../datasource/coupon_vendor_remote_datasource.dart';
import 'package:dartz/dartz.dart';

class CouponRepositoryImpl implements CouponRepository {
  final CouponVendorRemoteDataSource couponRemoteDataSource;
  final NetworkInfo networkInfo;

  CouponRepositoryImpl({
    required this.couponRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, CouponEntity>> getCouponsByCategory(int categoryId) async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final data = await couponRemoteDataSource.getCouponsByCategory(categoryId);
        return Right(data.toEntity());
      } on ServerException catch (serverException) {
        return Left(ServerFailure(message: serverException.errorMessage));
      }
    } else {
      return const Left(NoConnectionFailure(message: 'No Connection'));
    }
  }
}
