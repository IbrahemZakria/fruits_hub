import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/best_selling_fruits/presentation/pages/best_selling_page.dart';
import 'package:fruit_hub/generated/l10n.dart';

class BestSellerRow extends StatelessWidget {
  const BestSellerRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(S.current.bestSelling, style: Thems.textStyle16b),
        GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, BestSellingPage.routeName);
          },
          child: Text(S.current.more, style: Thems.textStyle16reg),
        ),
      ],
    );
  }
}
