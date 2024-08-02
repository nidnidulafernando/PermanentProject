import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:permanent_project/core/utils/colors.dart';
import '../../../core/reusable/coupon_card.dart';
import '../../../injector.dart';
import '../domain/entities/coupon_data_entity.dart';
import 'bloc/coupon/coupon_bloc.dart';
import '../../vendore_profile_screen/presentation/vendor_profile_page.dart';

class CouponScreenPageWrapper extends StatelessWidget {
  final int categoryId;

  const CouponScreenPageWrapper({Key? key, required this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CouponBloc>(
          create: (context) => sl<CouponBloc>(),
        ),
      ],
      child: CouponPage(categoryId: categoryId),
    );
  }
}

class CouponPage extends StatefulWidget {
  final int categoryId;

  const CouponPage({Key? key, required this.categoryId}) : super(key: key);

  @override
  State<CouponPage> createState() => _CouponPageState();
}

class _CouponPageState extends State<CouponPage> with SingleTickerProviderStateMixin {
  late TabController _innerTabController;
  final List<String> categories = ["View All", "Car Detailing", "Car Wash", "Discount Packages", "Miscellaneous"];
  int selectedCategoryIndex = 0;
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    _innerTabController = TabController(length: categories.length, vsync: this);
    context.read<CouponBloc>().add(GetCoupons(widget.categoryId));

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  void _onCategorySelected(int index) {
    setState(() {
      selectedCategoryIndex = index;
    });
  }

  void _loadMore() {
    if (!_isLoadingMore) {
      setState(() {
        _isLoadingMore = true;
      });
      Future.delayed(const Duration(seconds: 2), () {
        context.read<CouponBloc>().add(GetCoupons(widget.categoryId));
        setState(() {
          _isLoadingMore = false;
        });
      });
    }
  }

  @override
  void dispose() {
    _innerTabController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: SizedBox(
              height: 70,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () => _onCategorySelected(index),
                    child: Container(
                      margin: EdgeInsets.only(left: index == 0 ? 14 : 0, right: 10, bottom: 13, top: 8),
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                      decoration: BoxDecoration(
                        color: selectedCategoryIndex == index ? AppColors.primaryColor : AppColors.whiteColor,
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: selectedCategoryIndex == index
                            ? [
                                BoxShadow(
                                    color: Colors.black26.withOpacity(0.2),
                                    blurRadius: 7,
                                    offset: const Offset(1, 3),
                                    spreadRadius: 3),
                              ]
                            : [],
                      ),
                      child: Center(
                        child: Text(
                          categories[index],
                          style: TextStyle(
                            color: selectedCategoryIndex == index ? AppColors.whiteColor : AppColors.blackColor,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          // SizedBox(height: 5),
          Expanded(
            child: BlocBuilder<CouponBloc, CouponState>(
              builder: (context, state) {
                if (state.status == CouponStatus.loading && !_isLoadingMore) {
                  return Center(
                    child: ColorFiltered(
                      colorFilter: const ColorFilter.mode(
                        AppColors.blackColor,
                        BlendMode.modulate,
                      ),
                      child: Lottie.asset(
                        'assets/lottie/loading.json',
                        width: 100,
                        height: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                } else if (state.status == CouponStatus.success) {
                  // Filter data using keywords
                  List<CouponDataEntity> filteredData = state.couponData!;

                  if (selectedCategoryIndex == 1) {
                    filteredData = state.couponData!
                        .where((coupon) => coupon.description
                            .contains(RegExp(r'\b(detail|detailing|ceramic|wax)\b', caseSensitive: false)))
                        .toList();
                  } else if (selectedCategoryIndex == 2) {
                    filteredData = state.couponData!
                        .where((coupon) =>
                            coupon.description.contains(RegExp(r'\b(wash|vacuum|steam)\b', caseSensitive: false)))
                        .toList();
                  } else if (selectedCategoryIndex == 3) {
                    filteredData = state.couponData!
                        .where((coupon) =>
                            coupon.description.contains(RegExp(r'\b(discount|off|deal)\b', caseSensitive: false)))
                        .toList();
                  } else if (selectedCategoryIndex == 4) {
                    filteredData = state.couponData!
                        .where((coupon) => !coupon.description.contains(RegExp(
                            r'\b(detail|detailing|ceramic|wax|wash|vacuum|steam|discount|off|deal)\b',
                            caseSensitive: false)))
                        .toList();
                  }

                  return GridView.builder(
                    controller: _scrollController,
                    padding: const EdgeInsets.all(10),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 3 / 4,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: filteredData.length,
                    itemBuilder: (context, index) {
                      var coupon = filteredData[index];
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  StoreDetailsPageWrapper(categoryId: state.couponData![index].parentCompanyId),
                            ),
                          );
                        },
                        child: CouponCard(
                          coverImg: coupon.parentCompanyCoverImg,
                          profileImg: coupon.parentCompanyProfileImg,
                          companyName: coupon.parentCompanyName,
                          value: coupon.value,
                          valueType: coupon.valueType,
                          isLimited: coupon.isLimited == 1,
                          isAvailableForExpired: coupon.isAvailableForExpired == 1,
                          title: coupon.title,
                        ),
                      );
                    },
                  );
                } else if (state.status == CouponStatus.failure) {
                  return Center(
                    child: Text(
                      state.errorMessage ?? 'Error loading coupons',
                      style: const TextStyle(color: AppColors.blackColor),
                    ),
                  );
                }
                return Container();
              },
            ),
          ),
          if (_isLoadingMore)
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: ColorFiltered(
                  colorFilter: const ColorFilter.mode(
                    AppColors.blackColor,
                    BlendMode.modulate,
                  ),
                  child: Lottie.asset(
                    'assets/lottie/loading.json',
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
