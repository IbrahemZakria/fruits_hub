import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgts/custome_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class NameFormField extends StatelessWidget {
  const NameFormField({super.key, this.nameControler, this.validator});
  final TextEditingController? nameControler;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return CustomeTextFormField(
      controller: nameControler,
      validator: validator != null
          ? (value) {
              return validator!(value);
            }
          : (value) {
              if (value == null || value.isEmpty) {
                return S.of(context).Please_enter_your_name;
              }

              return null; // valid
            },
      prefixIcon: IconButton(onPressed: () {}, icon: Icon(Icons.perm_identity)),
      hintText: S.of(context).name,
    );
  }
}
