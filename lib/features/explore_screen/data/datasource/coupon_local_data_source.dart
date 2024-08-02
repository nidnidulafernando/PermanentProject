import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/errors/exceptions.dart';
import '../../../../util/shared_preferences_keys.dart';
import '../model/coupon_model.dart';

abstract class CouponLocalDataSource {
  Future<CouponModel> getCachedCoupons();

  Future<void> cacheCoupons(CouponModel couponModel);
}

class CouponLocalDataSourceImpl implements CouponLocalDataSource {
  final SharedPreferences sharedPreferences;

  CouponLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheCoupons(CouponModel couponModel) async {
    sharedPreferences.setString(CachedModelKeys.couponCached, couponModelToJson(couponModel));
  }

  @override
  Future<CouponModel> getCachedCoupons() async {
    final jsonString = sharedPreferences.getString(CachedModelKeys.couponCached);
    if (jsonString != null) {
      return Future.value(couponModelFromJson(jsonString));
    } else {
      throw CacheException();
    }
  }
}
