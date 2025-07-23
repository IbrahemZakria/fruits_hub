import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_view_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
  static const String routeName = "LoginView";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).login)),
      body: LoginViewBody(),
    );
  }
}
