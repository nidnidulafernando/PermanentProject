# Vehicle Services App

This project is a Flutter application for managing and displaying vehicle services, including coupons and vendor information. The application features a main page with tabs for coupons and vendors, detailed views for each category, and pagination for loading more data.

## Features

- **Coupon Page**: Displays a list of coupons categorized based on keywords in their descriptions.
- **Vendor Page**: Displays a list of vendors.
- **Store Details Page**: Displays detailed information about a selected store, including coupons and general information.


## Categories in the Coupon Page

The categories in the coupon page are dynamically created based on keywords found in the description of each coupon. As the API response does not include categories, the application uses the following logic to categorize coupons:

### Categories and Keywords

- **View All**:
  - Includes all coupons.

- **Car Detailing**:
  - Keywords: `detail`, `detailing`, `ceramic`, `wax`

- **Car Wash**:
  - Keywords: `wash`, `vacuum`, `steam`

- **Discount Packages**:
  - Keywords: `discount`, `off`, `deal`

- **Miscellaneous**:
  - Contains any coupons that don't match the other categories.

### Example Code for Categorization

```dart
List<CouponDataEntity> categorizeCoupons(List<CouponDataEntity> coupons, int selectedCategoryIndex) {
  if (selectedCategoryIndex == 1) {
    return coupons.where((coupon) =>
        coupon.description.contains(RegExp(r'\b(detail|detailing|ceramic|wax)\b', caseSensitive: false))).toList();
  } else if (selectedCategoryIndex == 2) {
    return coupons.where((coupon) =>
        coupon.description.contains(RegExp(r'\b(wash|vacuum|steam)\b', caseSensitive: false))).toList();
  } else if (selectedCategoryIndex == 3) {
    return coupons.where((coupon) =>
        coupon.description.contains(RegExp(r'\b(discount|off|deal)\b', caseSensitive: false))).toList();
  } else if (selectedCategoryIndex == 4) {
    return coupons.where((coupon) =>
    !coupon.description.contains(RegExp(r'\b(detail|detailing|ceramic|wax|wash|vacuum|steam|discount|off|deal)\b', caseSensitive: false))).toList();
  }
  return coupons;
}
