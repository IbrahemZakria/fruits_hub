import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/services/get_it_services.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_up_cbuit/sign_up_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/bloc_consumer_signup_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  static const String routeName = "CreateAccount";

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: AppBar(title: Text(S.of(context).new_account)),
        body: BlocConsumerSignupBody(),
      ),
    );
  }
}
