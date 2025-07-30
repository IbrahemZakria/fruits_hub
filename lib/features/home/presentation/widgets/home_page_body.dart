import 'package:flutter/material.dart';
import 'package:fruit_hub/features/home/presentation/widgets/custom_home_app_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: CustomHomeAppBar())],
        ),
      ),
    );
  }
}
