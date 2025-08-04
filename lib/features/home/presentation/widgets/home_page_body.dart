import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_seller_row.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_home_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custome_search_text_form_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/offer_item.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_grid_view.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: CustomHomeAppBar()),
            SliverToBoxAdapter(child: CustomeSearchTextFormField()),
            SliverToBoxAdapter(child: OfferItem()),
            SliverToBoxAdapter(child: BestSellerRow()),
            FruitGridView(),
          ],
        ),
      ),
    );
  }
}
