import 'package:dartz/dartz.dart';
import 'package:permanent_project/core/errors/failures.dart';
import '../entities/coupon_entity.dart';
import '../repository/coupon_repository.dart';

class GetCouponsByCategory {
  final CouponRepository repository;

  GetCouponsByCategory({required this.repository});

  Future<Either<Failure, CouponEntity>> call(int categoryId) async {
    return await repository.getCouponsByCategory(categoryId);
  }
}
