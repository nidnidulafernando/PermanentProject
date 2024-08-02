import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:permanent_project/core/utils/colors.dart';
import '../../../core/reusable/vendor_card.dart';
import '../../../injector.dart';
import '../../vendore_profile_screen/presentation/vendor_profile_page.dart';
import 'bloc/vendor/vendor_bloc.dart';

class VendorScreenPageWrapper extends StatelessWidget {
  final int categoryId;

  const VendorScreenPageWrapper({Key? key, required this.categoryId}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VendorBloc>(
          create: (context) => sl<VendorBloc>(),
        ),
      ],
      child: VendorPage(categoryId: categoryId),
    );
  }
}

class VendorPage extends StatefulWidget {
  final int categoryId;

  const VendorPage({Key? key, required this.categoryId}) : super(key: key);

  @override
  State<VendorPage> createState() => _VendorPageState();
}

class _VendorPageState extends State<VendorPage> {
  final ScrollController _scrollController = ScrollController();
  bool _isLoadingMore = false;

  @override
  void initState() {
    super.initState();
    context.read<VendorBloc>().add(GetVendors(widget.categoryId));

    _scrollController.addListener(() {
      if (_scrollController.position.pixels == _scrollController.position.maxScrollExtent) {
        _loadMore();
      }
    });
  }

  void _loadMore() {
    if (!_isLoadingMore) {
      setState(() {
        _isLoadingMore = true;
      });
      // Simulate a delay for loading more data
      Future.delayed(const Duration(seconds: 2), () {
        context.read<VendorBloc>().add(GetVendors(widget.categoryId));
        setState(() {
          _isLoadingMore = false;
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Column(
        children: [
          Expanded(
            child: BlocBuilder<VendorBloc, VendorState>(
              builder: (context, state) {
                if (state.status == VendorStatus.loading && !_isLoadingMore) {
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
                } else if (state.status == VendorStatus.success) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: GridView.builder(
                      controller: _scrollController,
                      padding: const EdgeInsets.all(10),
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: state.vendorData!.length,
                      itemBuilder: (context, index) {
                        var vendor = state.vendorData![index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => StoreDetailsPageWrapper(
                                  categoryId: vendor.parentCompanyId,
                                ),
                              ),
                            );
                          },
                          child: VendorCard(vendor: vendor),
                        );
                      },
                    ),
                  );
                } else if (state.status == VendorStatus.failure) {
                  return Center(
                    child: Text(
                      state.errorMessage ?? 'Error loading vendors',
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
