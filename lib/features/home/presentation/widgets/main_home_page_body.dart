import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/features/home/presentation/cubit/cart_cubit/cart_cubit.dart';
import 'package:fruit_hub/features/home/presentation/pages/account_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/cart_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/home_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/product_page.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/custom_bottom_navigation_bar.dart';

class MainHomePageBody extends StatefulWidget {
  const MainHomePageBody({super.key});

  @override
  State<MainHomePageBody> createState() => _MainHomePageBodyState();
}

class _MainHomePageBodyState extends State<MainHomePageBody> {
  int selectedIndex = 0;
  List<Widget> pages = [HomePage(), ProductPage(), CartPage(), AccountPage()];
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CartCubit(),
      child: Scaffold(
        body: IndexedStack(index: selectedIndex, children: pages),

        bottomNavigationBar: CustomBottomNavigationBar(
          selectedItem: (value) {
            setState(() {
              selectedIndex = value;
            });
          },
        ),
      ),
    );
  }
}
