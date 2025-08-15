import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/main_home_page_body.dart';

class MainHomePage extends StatelessWidget {
  const MainHomePage({super.key});
  static const String routeName = "MainHomePage";

  @override
  Widget build(BuildContext context) {
    return MainHomePageBody();
  }
}
