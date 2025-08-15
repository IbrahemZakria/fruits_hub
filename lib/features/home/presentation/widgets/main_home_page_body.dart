import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/services/auth/get_user_data.dart';
import 'package:fruit_hub/features/home/presentation/pages/account_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/cart_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/home_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/product_page.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_seller_row.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/custom_bottom_navigation_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custome_search_text_form_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/offer_item.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_grid_view.dart';

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
    return Scaffold(
      body: pages[selectedIndex],
      bottomNavigationBar: CustomBottomNavigationBar(
        selectedItem: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
      ),
    );
  }
}
