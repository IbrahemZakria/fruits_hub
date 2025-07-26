import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_up_cbuit/sign_up_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_up_cbuit/sign_up_state.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/create_account_body.dart';
import 'package:fruit_hub/generated/l10n.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class BlocConsumerSignupBody extends StatelessWidget {
  const BlocConsumerSignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          Usermessage.show(
            message: "${S.current.signUpSuccess} : ${state.user.email}",
          );
          // Handle successful sign-up, e.g., navigate to home page
        } else if (state is SignUpFailureState) {
          Usermessage.show(message: " ${state.errorMessage}");
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: (state is SignUpLoadingState) ? true : false,
          child: CreateAccountBody(),
        );
      },
    );
  }
}
