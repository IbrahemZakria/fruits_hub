import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/best_seller_row.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custome_search_text_form_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_grid_view.dart';
import 'package:fruit_hub/features/home/presentation/widgets/offer_item.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CustomAppBar()),
              SliverToBoxAdapter(child: CustomeSearchTextFormField()),
              SliverToBoxAdapter(child: OfferItem()),
              SliverToBoxAdapter(child: BestSellerRow()),
              FruitGridView(),
            ],
          ),
        ),
      ),
    );
  }
}
