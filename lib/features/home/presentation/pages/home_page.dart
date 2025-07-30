import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const String routeName = "HomePage";

  @override
  Widget build(BuildContext context) {
    return HomePageBody();
  }
}
