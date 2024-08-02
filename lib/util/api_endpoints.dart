class ApiEndpoints {
  ///  Server
  static const baseURL = 'https://staging-admin.slashdeals.lk';

  /// API Endpoints
  static String vendorScreen = "$baseURL/api/get-company-by-category/";
  static String couponScreen = "$baseURL/api/get-public-coupons-by-category/";
  static String storeScreen = "$baseURL/api/public-company-v3/";
}
