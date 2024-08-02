import '../../../../core/errors/exceptions.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/network/network_info.dart';
import '../../domain/entities/store_entity.dart';
import '../../domain/repository/store_repository.dart';
import '../datasource/store_remote_datasource.dart';
import 'package:dartz/dartz.dart';

class StoreRepositoryImpl implements StoreRepository {
  final StoreRemoteDataSource storeRemoteDataSource;
  final NetworkInfo networkInfo;

  StoreRepositoryImpl({
    required this.storeRemoteDataSource,
    required this.networkInfo,
  });

  @override
  Future<Either<Failure, StoreEntity>> getStoreDetails(int parentCompanyId) async {
    if (await networkInfo.isConnectedToInternet) {
      try {
        final data = await storeRemoteDataSource.getStoreDetails(parentCompanyId);
        return Right(data.toEntity());
      } on ServerException catch (serverException) {
        return Left(ServerFailure(message: serverException.errorMessage));
      }
    } else {
      return const Left(NoConnectionFailure(message: 'No Connection'));
    }
  }
}
