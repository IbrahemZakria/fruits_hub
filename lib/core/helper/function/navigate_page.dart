import 'package:fruit_hub/constant.dart';
import 'package:fruit_hub/core/utils/services/auth/firebase_auth_services.dart';
import 'package:fruit_hub/core/utils/services/shared_preferance.dart';
import 'package:fruit_hub/features/auth/presentation/pages/login_view.dart';
import 'package:fruit_hub/features/home/presentation/pages/home_page.dart';
import 'package:fruit_hub/features/onpoarding/presentation/pages/on_boarding_view.dart';

class NavigatePage {
  static addOnBoardingState() {
    SharedPreferance.setData(key: Constant.isOnoarding, value: true);
  }

  static bool isOnBoarding() {
    bool isOnBoarding =
        SharedPreferance.getData<bool>(Constant.isOnoarding) ?? false;
    return isOnBoarding;
  }

  static addtoken() {
    SharedPreferance.setData(key: Constant.token, value: true);
  }

  static bool isLogin() {
    bool isLogin = FirebaseAuthServices.auth.currentUser != null ? true : false;
    SharedPreferance.getData<bool>(Constant.token) ?? false;
    return isLogin;
  }

  static String routeName() {
    if (isOnBoarding()) {
      if (isLogin()) {
        return HomePage.routeName;
      } else {
        return LoginView.routeName;
      }
    } else {
      return OnBoardingView.routeName;
    }
  }
}
