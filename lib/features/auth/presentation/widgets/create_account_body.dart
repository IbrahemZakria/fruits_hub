import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_up_cbuit/sign_up_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custome_check_box.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/text_form_field_widget/email_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/text_form_field_widget/name_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/text_form_field_widget/pass_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class CreateAccountBody extends StatefulWidget {
  const CreateAccountBody({super.key});

  @override
  State<CreateAccountBody> createState() => _CreateAccountBodyState();
}

class _CreateAccountBodyState extends State<CreateAccountBody> {
  final TextEditingController emailControler = TextEditingController();

  final TextEditingController nameControler = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  bool ischeck = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var local = S.of(context);

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              NameFormField(nameControler: nameControler),

              SizedBox(height: size.height * .019),

              EmailFormField(emailControler: emailControler),
              SizedBox(height: size.height * .019),
              PassFormField(passwordController: passwordController),
              SizedBox(height: size.height * .019),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomeCheckBox(
                    isactive: ischeck,
                    oncheck: (value) {
                      setState(() {
                        ischeck = value;
                      });
                    },
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: local.checkbox_content,
                            style: Thems.textStyle13SB,
                          ),
                          TextSpan(
                            text: local.Terms_and_Conditions,
                            style: Thems.textStyle13SB.copyWith(
                              color: Thems.kLightprimarycolor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: size.height * .0134),
              // ده زرار انشاء الحساب
              CustomButton(
                text: local.create_account,
                onTap: () {
                  if (ischeck) {
                    if (_formKey.currentState!.validate()) {
                      context.read<SignUpCubit>().signUpWithEmailAndPassword(
                        email: emailControler.text,
                        password: passwordController.text,
                        name: nameControler.text,
                      );
                    }
                  } else {
                    Usermessage.show(
                      message: local.acceptTerms,
                      backgroundColor: Colors.redAccent,
                    );
                  }
                },
              ),
              SizedBox(height: size.height * .0134),
              // ده الrow اللى فيه جملة عندك حساب
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(local.have_an_account),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      local.login,
                      style: Thems.textStyle13SB.copyWith(
                        color: Thems.kLightprimarycolor,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
