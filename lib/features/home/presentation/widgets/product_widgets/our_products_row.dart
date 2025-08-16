import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/best_selling_fruits/presentation/pages/best_selling_page.dart';
import 'package:fruit_hub/generated/l10n.dart';

class OurProductsRow extends StatelessWidget {
  const OurProductsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0, top: 16, left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(S.current.products, style: Thems.textStyle16b),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, BestSellingPage.routeName);
            },
            child: SvgPicture.asset(
              fit: BoxFit.scaleDown,
              Assets.assetsImagesFilteringIcon,
            ),
          ),
        ],
      ),
    );
  }
}
