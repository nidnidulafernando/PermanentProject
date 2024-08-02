import 'package:shared_preferences/shared_preferences.dart';

import '../../../../../core/errors/exceptions.dart';
import '../../../../util/shared_preferences_keys.dart';
import '../model/store_model.dart';

abstract class StoreLocalDataSource {
  Future<StoreModel> getCachedStores();

  Future<void> cacheStores(StoreModel storesModel);
}

class StoreLocalDataSourceImpl implements StoreLocalDataSource {
  final SharedPreferences sharedPreferences;

  StoreLocalDataSourceImpl({required this.sharedPreferences});

  @override
  Future<void> cacheStores(StoreModel storesModel) async {
    sharedPreferences.setString(CachedModelKeys.storeCached, storeModelToJson(storesModel));
  }

  @override
  Future<StoreModel> getCachedStores() async {
    final jsonString = sharedPreferences.getString(CachedModelKeys.storeCached);
    if (jsonString != null) {
      return Future.value(storeModelFromJson(jsonString));
    } else {
      throw CacheException();
    }
  }
}
