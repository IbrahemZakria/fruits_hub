import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgts/custome_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class EmailFormField extends StatelessWidget {
  const EmailFormField({super.key, this.emailControler, this.validator});
  final TextEditingController? emailControler;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      controller: emailControler,
      validator: validator != null
          ? (value) {
              return validator!(value);
            }
          : (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).Please_enter_your_email;
              }
              // Check email format
              final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
              if (!emailRegex.hasMatch(value)) {
                return S.of(context).please_enter_valid_email;
              }
              return null; // valid
            },
      prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.perm_identity)),
      hintText: S.of(context).Email,
    );
  }
}
