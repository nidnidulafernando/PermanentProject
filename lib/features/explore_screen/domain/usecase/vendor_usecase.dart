import 'package:dartz/dartz.dart';
import 'package:permanent_project/core/errors/failures.dart';
import '../entities/vendor_entity.dart';
import '../repository/vendor_repository.dart';

class GetVendorsByCategory {
  final VendorRepository repository;

  GetVendorsByCategory({required this.repository});

  Future<Either<Failure, VendorEntity>> call(int categoryId) async {
    return await repository.getVendorsByCategory(categoryId);
  }
}
