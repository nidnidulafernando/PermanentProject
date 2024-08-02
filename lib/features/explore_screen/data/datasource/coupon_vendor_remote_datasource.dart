import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/network/dio_client.dart';
import '../../../../util/api_endpoints.dart';
import '../model/coupon_model.dart';
import '../model/vendor_model.dart';

abstract class CouponVendorRemoteDataSource {
  Future<CouponModel> getCouponsByCategory(int categoryId);
  Future<VendorModel> getVendorsByCategory(int categoryId);
}

class CouponVendorRemoteDataSourceImpl implements CouponVendorRemoteDataSource {
  final DioClient dioClient;

  CouponVendorRemoteDataSourceImpl({required this.dioClient});

  @override
  Future<CouponModel> getCouponsByCategory(int categoryId) async {
    try {
      Response response = await dioClient.public.get('${ApiEndpoints.couponScreen}$categoryId');
      debugPrint("#34324 coupon Response: ${response.data}");
      return couponModelFromJson(response.data);
    } on DioException catch (err) {
      debugPrint("#34324 error: $err");
      throw ServerException.fromDioError(err);
    } catch (e) {
      debugPrint("#34324 error: $e");
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }

  @override
  Future<VendorModel> getVendorsByCategory(int categoryId) async {
    try {
      Response response = await dioClient.public.get('${ApiEndpoints.vendorScreen}$categoryId');
      debugPrint("#43543 vendor Response: ${response.data}");
      return vendorModelFromJson(response.data);
    } on DioException catch (err) {
      debugPrint("#43543 error: $err");
      throw ServerException.fromDioError(err);
    } catch (e) {
      debugPrint("#43543 error: $e");
      throw ServerException(errorMessage: '$e', unexpectedError: true);
    }
  }
}
