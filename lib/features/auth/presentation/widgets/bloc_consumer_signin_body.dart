import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_view_body.dart';
import 'package:fruit_hub/features/home/presentation/pages/main_home_page.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BlocConsumerSigninBody extends StatelessWidget {
  const BlocConsumerSigninBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          Usermessage.show(
            backgroundColor: Thems.kLightprimarycolor,
            message: "${S.current.loginSuccess} : ${state.user.email}",
          );
          Navigator.pushReplacementNamed(context, MainHomePage.routeName);
          // Handle successful sign-up, e.g., navigate to home page
        } else if (state is SignInFailureState) {
          Usermessage.show(
            backgroundColor: Colors.redAccent,
            message: " ${state.errorMessage}",
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: (state is SignInLoadingState) ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
