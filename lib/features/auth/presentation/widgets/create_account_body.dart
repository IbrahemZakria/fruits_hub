import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/services/get_it_services.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/core/utils/widgts/custom_button.dart';
import 'package:fruit_hub/core/utils/widgts/user_message.dart';
import 'package:fruit_hub/features/auth/domain/repositories/auth_repo.dart';
import 'package:fruit_hub/features/auth/presentation/cubit/sign_up_cuit/sign_up_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/custome_check_box.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_state_widget.dart';
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

    return BlocProvider(
      create: (context) => SignUpCubit(getIt<AuthRepo>()),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                NameFormField(emailControler: nameControler),

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
                              text: S.of(context).checkbox_content,
                              style: Thems.textStyle13SB,
                            ),
                            TextSpan(
                              text: S.of(context).Terms_and_Conditions,
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
                CustomButton(
                  text: S.of(context).create_account,
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
                    Text(S.of(context).have_an_account),
                    TextButton(
                      style: TextButton.styleFrom(padding: EdgeInsets.zero),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        S.of(context).login,
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
      ),
    );
  }
}
