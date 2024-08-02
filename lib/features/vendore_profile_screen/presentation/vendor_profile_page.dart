import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permanent_project/util/api_endpoints.dart';
import 'package:lottie/lottie.dart';
import '../../../core/functions/decimal_formater.dart';
import '../../../core/utils/colors.dart';
import '../../../injector.dart';
import '../domain/entities/store_company_data_entity.dart';
import 'bloc/store_details_bloc.dart';
import '../../../core/reusable/coupon_card.dart';

class StoreDetailsPageWrapper extends StatelessWidget {
  final int categoryId;

  const StoreDetailsPageWrapper({Key? key, required this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<StoreDetailsBloc>(
          create: (context) => sl<StoreDetailsBloc>(),
        ),
      ],
      child: StoreDetailsPage(parentCompanyId: categoryId),
    );
  }
}

class StoreDetailsPage extends StatefulWidget {
  final int parentCompanyId;

  const StoreDetailsPage({Key? key, required this.parentCompanyId}) : super(key: key);

  @override
  State<StoreDetailsPage> createState() => _StoreDetailsPageState();
}

class _StoreDetailsPageState extends State<StoreDetailsPage> {
  int selectedCategoryIndex = 0;
  final List<String> categories = ["Coupons", "Information"];
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    context.read<StoreDetailsBloc>().add(GetStoreDetailsEvent(widget.parentCompanyId));

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
      // Simulate a delay for loading more data
      Future.delayed(const Duration(seconds: 2), () {
        context.read<StoreDetailsBloc>().add(GetStoreDetailsEvent(widget.parentCompanyId));
        setState(() {
          _isLoadingMore = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: context.read<StoreDetailsBloc>()..add(GetStoreDetailsEvent(widget.parentCompanyId)),
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: BlocBuilder<StoreDetailsBloc, StoreDetailsState>(
          builder: (context, state) {
            if (state.status == StoreDetailsStatus.loading && !_isLoadingMore) {
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
            } else if (state.status == StoreDetailsStatus.success) {
              final store = state.storeData!;
              return SingleChildScrollView(
                controller: _scrollController,
                child: Column(
                  children: [
                    // Header
                    _buildStoreHeader(store),
                    // Category Selector
                    Center(
                      child: Container(
                        height: 70,
                        margin: const EdgeInsets.symmetric(vertical: 10),
                        child: Center(
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: categories.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () => _onCategorySelected(index),
                                child: Container(
                                  margin: EdgeInsets.only(left: index == 0 ? 14 : 0, right: 10, bottom: 13, top: 8),
                                  padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                                  decoration: BoxDecoration(
                                    color:
                                        selectedCategoryIndex == index ? AppColors.primaryColor : AppColors.whiteColor,
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
                                        color: selectedCategoryIndex == index
                                            ? AppColors.whiteColor
                                            : AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                    // Tab Bar View
                    selectedCategoryIndex == 0 ? _buildCouponsTab(store) : _buildInformationTab(store),
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
            } else if (state.status == StoreDetailsStatus.failure) {
              return Center(
                child: Text(
                  state.errorMessage ?? 'Error loading store details',
                  style: const TextStyle(color: AppColors.blackColor),
                ),
              );
            }
            return Container();
          },
        ),
      ),
    );
  }

  Widget _buildStoreHeader(StoreCompanyDataEntity store) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 16, left: 30, bottom: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26.withOpacity(0.1),
                          blurRadius: 10,
                          offset: const Offset(1, 3),
                          spreadRadius: 2),
                    ],
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: AppColors.whiteColor,
                    child: ClipOval(
                      child: store.profileImg.isNotEmpty
                          ? Image.network(
                              "${ApiEndpoints.baseURL}${store.profileImg}",
                              fit: BoxFit.cover,
                              errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                                return Image.asset('assets/img/placeholder.png',
                                    width: 80, height: 80, fit: BoxFit.cover);
                              },
                            )
                          : Image.asset('assets/img/placeholder.png', width: 80, height: 80, fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: CircleAvatar(
                  radius: 20,
                  backgroundColor: AppColors.secondaryColor,
                  child: Icon(
                    Icons.close,
                    color: Colors.black.withOpacity(0.7),
                    size: 20,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18),
            child: SizedBox(
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        store.name,
                        style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        overflow: TextOverflow.ellipsis,
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      const Text(
                        'Automobile service centre',
                        style: TextStyle(fontSize: 16, color: AppColors.blackColor),
                      ),
                    ],
                  ),
                  Container(
                    width: 60,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26.withOpacity(0.2),
                            blurRadius: 7,
                            offset: const Offset(1, 3),
                            spreadRadius: 3),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        ' ${formatToDecimal(store.rating)}',
                        style: const TextStyle(
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCouponsTab(StoreCompanyDataEntity store) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: store.coupons.length,
        itemBuilder: (context, index) {
          var coupon = store.coupons[index];
          return CouponCard(
            coverImg: store.coverImg,
            profileImg: store.profileImg,
            companyName: store.name,
            value: coupon.value,
            valueType: coupon.valueType,
            isLimited: coupon.isLimited == 1,
            isAvailableForExpired: coupon.isAvailableForExpired == 1,
            title: coupon.title,
          );
        },
      ),
    );
  }

  Widget _buildInformationTab(StoreCompanyDataEntity store) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(store.description),
          const SizedBox(height: 16),
          const Text('Address', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(store.addressLineOne),
          const SizedBox(height: 16),
          const Text('HotLine', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(store.hotlineNumber, style: const TextStyle(color: AppColors.blackColor)),
        ],
      ),
    );
  }
}
