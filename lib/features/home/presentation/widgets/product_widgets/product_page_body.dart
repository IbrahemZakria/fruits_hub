import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/cubits/products_cubit.dart';
import 'package:fruit_hub/core/utils/repos/get_product_repo.dart';
import 'package:fruit_hub/core/utils/services/get_it_services.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custome_search_text_form_field.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_grid_view.dart';
import 'package:fruit_hub/features/home/presentation/widgets/home_widgets/best_seller_row.dart';
import 'package:fruit_hub/features/home/presentation/widgets/product_widgets/our_products_row.dart';
import 'package:fruit_hub/generated/l10n.dart';

class ProductPageBody extends StatelessWidget {
  const ProductPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          ProductsCubit(getIt<GetProductRepo>())..getbestSellingProducts(),
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: CustomAppBar(titel: S.current.products),
                ),
                SliverToBoxAdapter(child: CustomeSearchTextFormField()),
                SliverToBoxAdapter(child: OurProductsRow()),
                SliverToBoxAdapter(child: BestSellerRow()),
                FruitGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
