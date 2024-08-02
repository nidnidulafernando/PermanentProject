import 'package:dartz/dartz.dart';
import 'package:permanent_project/core/errors/failures.dart';
import '../entities/store_entity.dart';
import '../repository/store_repository.dart';

class GetStoreDetails {
  final StoreRepository repository;

  GetStoreDetails({required this.repository});

  Future<Either<Failure, StoreEntity>> call(int parentCompanyId) async {
    return await repository.getStoreDetails(parentCompanyId);
  }
}
