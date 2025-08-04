import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_app_bar_entity.dart';

class UnSelectedItem extends StatelessWidget {
  const UnSelectedItem({super.key, required this.bottomAppBarEntity});
  final BottomAppBarEntity bottomAppBarEntity;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(bottomAppBarEntity.unSelectedImage);
  }
}
