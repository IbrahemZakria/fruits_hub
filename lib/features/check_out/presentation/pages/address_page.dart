import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/adress_page_widgets/adress_page_body.dart';

class AddressPage extends StatelessWidget {
  const AddressPage({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });
  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> autovalidateMode;

  @override
  Widget build(BuildContext context) {
    return AdressPageBody(formKey: formKey, autovalidateMode: autovalidateMode);
  }
}
