import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/custom_app_bar.dart';
import 'package:fruit_hub/features/home/presentation/widgets/fruit_grid_view.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellingPageBody extends StatelessWidget {
  const BestSellingPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomAppBar(),
                SizedBox(height: 24),
                Text(S.current.bestSelling, style: Thems.textStyle16b),
                SizedBox(height: 8),
                FruitGridView(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
