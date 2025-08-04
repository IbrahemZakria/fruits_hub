import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/domain/entities/bottom_app_bar_entity.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_bottom_navigation_bar_widger/navigation_bottom_app_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * .09,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(top: Radius.circular(30)),

        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 204, 202, 202),
            spreadRadius: 0,
            blurRadius: 25,
            offset: Offset(0, -.1), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: BottomAppBarEntity.getBottomAppBarItems.asMap().entries.map((
          entry,
        ) {
          int index = entry.key;
          var item = entry.value;

          return GestureDetector(
            onTap: () {
              setState(() {
                selectedindex = index;
              });
            },
            child: NavigationBottomAppBarItem(
              isselected: selectedindex == index ? true : false,
              bottomAppBarEntity: item,
            ),
          );
        }).toList(),
      ),
    );
  }
}
