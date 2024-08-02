import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/utils/colors.dart';
import 'features/explore_screen/presentation/bloc/coupon/coupon_bloc.dart';
import 'features/explore_screen/presentation/bloc/vendor/vendor_bloc.dart';
import 'features/explore_screen/presentation/explore_page.dart';
import 'features/vendore_profile_screen/presentation/bloc/store_details_bloc.dart';
import 'injector.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    const int categoryId = 4;

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => di.sl<CouponBloc>()..add(const GetCoupons(categoryId)),
        ),
        BlocProvider(
          create: (_) => di.sl<VendorBloc>()..add(const GetVendors(categoryId)),
        ),
        BlocProvider(
          create: (_) => di.sl<StoreDetailsBloc>(),
        ),
      ],
      child: const MaterialApp(
        color:AppColors.backgroundColor,
        debugShowCheckedModeBanner: false,
        home: MainPage(categoryId: categoryId),
      ),
    );
  }
}