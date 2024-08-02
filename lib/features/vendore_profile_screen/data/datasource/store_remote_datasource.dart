import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../util/api_endpoints.dart';
import '../model/store_model.dart';

abstract class StoreRemoteDataSource {
  Future<StoreModel> getStoreDetails(int parentCompanyId);
}

class RemoteDataSourceImpl implements StoreRemoteDataSource {
  final DioClient dioClient;

  RemoteDataSourceImpl({required this.dioClient});

  @override
  Future<StoreModel> getStoreDetails(int parentCompanyId) async {
    try {
      Response response = await dioClient.public.get('${ApiEndpoints.storeScreen}$parentCompanyId');
      debugPrint("#7654 store Response: ${response.data}");
      return storeModelFromJson(response.data);
    } on DioException catch (err) {
      debugPrint("#7654 error: $err");
      throw ServerException.fromDioError(err);
    } catch (e) {
      debugPrint("#7654 error: $e");
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
