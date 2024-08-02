import 'package:shared_preferences/shared_preferences.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../util/shared_preferences_keys.dart';
import '../model/vendor_model.dart';

abstract class VendorLocalDataSource {
  Future<VendorModel> getCachedVendors();

  Future<void> cacheVendors(VendorModel vendorModel);
}

class VendorLocalDataSourceImpl implements VendorLocalDataSource {
  final SharedPreferences sharedPreferences;

  VendorLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheVendors(VendorModel vendorModel) async {
    sharedPreferences.setString(CachedModelKeys.vendorCached, vendorModelToJson(vendorModel));
  }

  @override
  Future<VendorModel> getCachedVendors() async {
    final jsonString = sharedPreferences.getString(CachedModelKeys.vendorCached);
    if (jsonString != null) {
      return Future.value(vendorModelFromJson(jsonString));
    } else {
      throw CacheException();
    }
  }
}
