import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/create_account_body.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CreateAccount extends StatelessWidget {
  const CreateAccount({super.key});
  static const String routeName = "CreateAccount";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).new_account)),
      body: CreateAccountBody(),
    );
  }
}
