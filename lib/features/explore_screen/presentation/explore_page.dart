import 'package:flutter/material.dart';
import '../../../core/reusable/custom_tab_bar.dart';
import '../../../core/utils/colors.dart';
import 'coupon_page.dart';
import 'vendor_page.dart';

class MainPage extends StatefulWidget {
  final int categoryId;

  const MainPage({Key? key, required this.categoryId}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int selectedIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            color: AppColors.backgroundColor,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: AppColors.secondaryColor,
                        child: IconButton(
                          color: AppColors.blackColor,
                          icon: const Icon(
                            Icons.arrow_back_outlined,
                            size: 21,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      const Text(
                        'Vehicle Services',
                        style: TextStyle(
                          color: AppColors.textColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.filter_list),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                CustomTabBar(
                  selectedIndex: selectedIndex,
                  onTabSelected: _onTabSelected,
                ),
              ],
            ),
          ),
          Expanded(
            child: IndexedStack(
              index: selectedIndex,
              children: [
                CouponScreenPageWrapper(categoryId: widget.categoryId),
                VendorScreenPageWrapper(categoryId: widget.categoryId),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
