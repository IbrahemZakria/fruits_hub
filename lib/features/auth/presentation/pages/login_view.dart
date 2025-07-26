import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/services/get_it_services.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_in_cubit/sign_in_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/bloc_consumer_signin_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "LoginView";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignInCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(title: Text(S.of(context).login)),
        body: BlocConsumerSigninBody(),
      ),
    );
  }
}
