import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/adress_page_widgets/form_fields.dart';

// ignore: must_be_immutable
class AdressPageBody extends StatelessWidget {
  AdressPageBody({
    super.key,
    required this.formKey,
    required this.autovalidateMode,
  });

  final GlobalKey<FormState> formKey;
  final ValueListenable<AutovalidateMode> autovalidateMode;

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController adress = TextEditingController();

  TextEditingController appartement = TextEditingController();

  TextEditingController city = TextEditingController();
  TextEditingController phone = TextEditingController();

  TextEditingController numberOfMonthExpiration = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder<AutovalidateMode>(
        valueListenable: autovalidateMode,
        builder: (context, value, child) => Form(
          autovalidateMode: value,
          key: formKey,

          child: SingleChildScrollView(
            child: Column(
              children: [
                FormFields(
                  phone: phone,
                  name: name,
                  email: email,
                  adress: adress,
                  city: city,
                  appartement: appartement,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
