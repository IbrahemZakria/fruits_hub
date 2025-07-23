import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_state_widget.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/text_form_field_widget/email_form_field.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/text_form_field_widget/pass_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class LoginViewBody extends StatelessWidget {
  LoginViewBody({super.key});
  final TextEditingController emailControler = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              EmailFormField(emailControler: emailControler),
              SizedBox(height: size.height * .019),
              PassFormField(passwordController: passwordController),
              SizedBox(height: size.height * .019),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      // Navigator.pushNamed(
                      //   context,
                      //   ForgotPasswordView.routeName,
                      // );
                    },
                    child: Text(
                      S.of(context).did_you_forgot_password,
                      style: Thems.textStyle13SB.copyWith(
                        color: Thems.kLightprimarycolor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * .0134),
              CustomButton(
                text: S.of(context).login,
                onTap: () {
                  if (_formKey.currentState!.validate()) {
                    Usermessage.show(message: 'message');
                  }
                },
              ),
              SizedBox(height: size.height * .0134),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(S.of(context).dont_have_an_account),
                  TextButton(
                    style: TextButton.styleFrom(padding: EdgeInsets.zero),
                    onPressed: () {
                      // Navigator.pushNamed(
                      //   context,
                      //   ForgotPasswordView.routeName,
                      // );
                    },
                    child: Text(
                      S.of(context).create_account,
                      style: Thems.textStyle13SB.copyWith(
                        color: Thems.kLightprimarycolor,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * .0134),
              Row(
                children: [
                  Expanded(child: Divider(color: Thems.lightgray)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(S.of(context).or),
                  ),
                  Expanded(child: Divider(color: Thems.lightgray)),
                ],
              ),
              SizedBox(height: size.height * .019),
              LoginStateWidget(
                image: Assets.assetsImagesGoogelIcon,
                title: S.of(context).login_with_googel,
                onPressed: () {},
              ),
              SizedBox(height: size.height * .019),
              LoginStateWidget(
                image: Assets.assetsImagesAppelIcon,
                title: S.of(context).login_with_appel,
                onPressed: () {},
              ),

              SizedBox(height: size.height * .019),
              LoginStateWidget(
                image: Assets.assetsImagesFacebookIcon,
                title: S.of(context).login_with_facebook,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
