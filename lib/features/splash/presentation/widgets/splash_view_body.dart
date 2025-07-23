import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/cubits/localization/localization_cubit.dart';
import 'package:fruit_hub/features/splash/presentation/functions/navigate_page.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();

    Future.delayed(Duration(seconds: 5), () {
      if (!mounted) return;
      Navigator.pushReplacementNamed(context, NavigatePage.routeName());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: LocalizationCubit.isAraic
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [SvgPicture.asset(Assets.assetsImagesSplashPlant)],
          ),
          SvgPicture.asset(Assets.assetsImagesLogo),
          SvgPicture.asset(Assets.assetsImagesSplashCircles, fit: BoxFit.fill),
        ],
      ),
    );
  }
}
