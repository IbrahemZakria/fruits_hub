import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgts/custome_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class PassFormField extends StatefulWidget {
  const PassFormField({super.key, this.passwordController, this.validator});
  final TextEditingController? passwordController;
  final String? Function(String?)? validator;

  @override
  State<PassFormField> createState() => _PassFormFieldState();
}

class _PassFormFieldState extends State<PassFormField> {
  bool isPasswordVisible = false;
  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField.custometextformfield(
      controller: widget.passwordController,
      validator: widget.validator != null
          ? (value) {
              return widget.validator!(value);
            }
          : (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).required_password;
              }
              return null;
            },
      textType: TextInputType.visiblePassword,
      suffixIcon: IconButton(
        onPressed: () {
          setState(() {
            isPasswordVisible = !isPasswordVisible;
          });
        },
        icon: isPasswordVisible
            ? Icon(Icons.visibility_off_outlined)
            : Icon(Icons.visibility_outlined),
      ),
      obscureText: isPasswordVisible,
      hintText: S.of(context).password,
      prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.lock)),
    );
  }
}
