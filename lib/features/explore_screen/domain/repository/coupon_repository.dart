import 'package:dartz/dartz.dart';
import '../../../../core/errors/failures.dart';
import '../entities/coupon_entity.dart';

abstract class CouponRepository {
  Future<Either<Failure, CouponEntity>> getCouponsByCategory(int categoryId);
}
