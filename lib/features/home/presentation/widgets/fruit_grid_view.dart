import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/helper/dumy_data.dart';
import 'package:fruit_hub/core/utils/cubits/products_cubit.dart';
import 'package:fruit_hub/core/utils/cubits/products_state.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_card.dart';
import 'package:skeletonizer/skeletonizer.dart';

class FruitGridView extends StatefulWidget {
  const FruitGridView({super.key});

  @override
  State<FruitGridView> createState() => _FruitGridViewState();
}

class _FruitGridViewState extends State<FruitGridView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccessState) {
          return SliverGrid.builder(
            itemCount: state.products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              childAspectRatio: 3 / 3.5,
            ),
            itemBuilder: (context, index) {
              final fruit = state.products[index];
              return FruitCard(product: fruit);
            },
          );
        } else if (state is ProductsFailureState) {
          return SliverToBoxAdapter(child: Text('data'));
        } else {
          return Skeletonizer.sliver(
            enabled: state is ProductsLoadingState,
            child: SliverGrid.builder(
              itemCount: 10,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 10,
                childAspectRatio: 3 / 3.5,
              ),
              itemBuilder: (context, index) {
                return FruitCard(product: dummyProduct);
              },
            ),
          );
        }
      },
    );
  }
}
