import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/store_entity.dart';

abstract class StoreRepository {
  Future<Either<Failure, StoreEntity>> getStoreDetails(int parentCompanyId);
}
