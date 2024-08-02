import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'core/network/network_info.dart';
import 'features/explore_screen/data/datasource/coupon_vendor_remote_datasource.dart';
import 'features/explore_screen/data/respository/coupon_repository_impl.dart';
import 'features/explore_screen/data/respository/vendor_repository_impl.dart';
import 'features/explore_screen/domain/repository/coupon_repository.dart';
import 'features/explore_screen/domain/repository/vendor_repository.dart';
import 'features/explore_screen/domain/usecase/coupon_usecase.dart';
import 'features/explore_screen/domain/usecase/vendor_usecase.dart';
import 'features/explore_screen/presentation/bloc/coupon/coupon_bloc.dart';
import 'features/explore_screen/presentation/bloc/vendor/vendor_bloc.dart';
import 'features/vendore_profile_screen/data/datasource/store_remote_datasource.dart';
import 'features/vendore_profile_screen/data/repository/store_repository_impl.dart';
import 'features/vendore_profile_screen/domain/repository/store_repository.dart';
import 'features/vendore_profile_screen/domain/usecase/store_usecase.dart';
import 'features/vendore_profile_screen/presentation/bloc/store_details_bloc.dart';
import 'core/network/dio_client.dart'; // Import DioClient

final sl = GetIt.instance;

Future<void> setup() async {
  // Network
  sl.registerFactory<Dio>(() => Dio());
  sl.registerLazySingleton<NetworkInfo>(() => NetworkInfoImpl(connectionChecker: sl()));
  sl.registerLazySingleton<InternetConnectionChecker>(() => InternetConnectionChecker());
  sl.registerLazySingleton<DioClient>(() => DioClient(auth: sl(), public: sl()));

  // Data Sources
  sl.registerLazySingleton<CouponVendorRemoteDataSource>(() => CouponVendorRemoteDataSourceImpl(dioClient: sl()));
  sl.registerLazySingleton<StoreRemoteDataSource>(() => RemoteDataSourceImpl( dioClient: sl()));

  // Repository
  sl.registerLazySingleton<CouponRepository>(() => CouponRepositoryImpl(couponRemoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<VendorRepository>(() => VendorRepositoryImpl(vendorRemoteDataSource: sl(), networkInfo: sl()));
  sl.registerLazySingleton<StoreRepository>(() => StoreRepositoryImpl(storeRemoteDataSource: sl(), networkInfo: sl()));

  // Use Cases
  sl.registerLazySingleton(() => GetCouponsByCategory(repository: sl()));
  sl.registerLazySingleton(() => GetVendorsByCategory(repository: sl()));
  sl.registerLazySingleton(() => GetStoreDetails(repository: sl()));

  // Blocs
  sl.registerFactory(() => CouponBloc(getCouponsByCategory: sl()));
  sl.registerFactory(() => VendorBloc(getVendorsByCategory: sl()));
  sl.registerFactory(() => StoreDetailsBloc(getStoreDetails: sl()));
}
