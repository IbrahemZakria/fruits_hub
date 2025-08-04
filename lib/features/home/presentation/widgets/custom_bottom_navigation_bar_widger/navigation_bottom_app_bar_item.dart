import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_app_bar_entity.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/selected_item.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/un_selected_item.dart';

class NavigationBottomAppBarItem extends StatelessWidget {
  const NavigationBottomAppBarItem({
    super.key,
    required this.isselected,
    required this.bottomAppBarEntity,
  });
  final bool isselected;
  final BottomAppBarEntity bottomAppBarEntity;

  @override
  Widget build(BuildContext context) {
    return isselected
        ? SelectedItem(bottomAppBarEntity: bottomAppBarEntity)
        : UnSelectedItem(bottomAppBarEntity: bottomAppBarEntity);
  }
}
