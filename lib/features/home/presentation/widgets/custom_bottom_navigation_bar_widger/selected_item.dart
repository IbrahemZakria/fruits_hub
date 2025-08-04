import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_app_bar_entity.dart';

class SelectedItem extends StatelessWidget {
  const SelectedItem({super.key, required this.bottomAppBarEntity});
  final BottomAppBarEntity bottomAppBarEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Thems.lightgray,
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 15,
            backgroundColor: Thems.kprimarycolor,
            child: SvgPicture.asset(bottomAppBarEntity.slectedImage),
          ),
          SizedBox(width: 8),
          Text(bottomAppBarEntity.title, style: Thems.textStyle11sB),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}
