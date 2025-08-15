import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/pages/create_account.dart';
import 'package:fruit_hub/features/auth/presentation/pages/login_view.dart';
import 'package:fruit_hub/features/best_selling_fruits/presentation/pages/best_selling_page.dart';
import 'package:fruit_hub/features/home/presentation/pages/main_home_page.dart';
import 'package:fruit_hub/features/onpoarding/presentation/pages/on_boarding_view.dart';
import 'package:fruit_hub/features/splash/presentation/pages/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => SplashView());
    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => OnBoardingView());
    case LoginView.routeName:
      return MaterialPageRoute(builder: (context) => LoginView());
    case CreateAccount.routeName:
      return MaterialPageRoute(builder: (context) => CreateAccount());
    case MainHomePage.routeName:
      return MaterialPageRoute(builder: (context) => MainHomePage());
    case BestSellingPage.routeName:
      return MaterialPageRoute(builder: (context) => BestSellingPage());

    default:
      return MaterialPageRoute(
        builder: (context) =>
            const Scaffold(body: Center(child: Text('Route not found'))),
      );
  }
}
