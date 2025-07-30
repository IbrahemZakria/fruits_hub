import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fruit_hub/bloco_bserver.dart';
import 'package:fruit_hub/core/helper/function/navigate_page.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/cubits/localization/localization_cubit.dart';
import 'package:fruit_hub/core/utils/services/get_it_services.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/firebase_options.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    initializeApp();
  }

  Future<void> initializeApp() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    Bloc.observer = MyBlocObserver();
    await SharedPreferance.init();
    setup();

    // await Future.delayed(Duration(seconds: 2));

    if (!mounted) return;

    Navigator.pushReplacementNamed(context, NavigatePage.routeName());
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
