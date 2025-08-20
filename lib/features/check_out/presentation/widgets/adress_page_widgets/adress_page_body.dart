import 'package:flutter/material.dart';
import 'package:fruit_hub/features/check_out/presentation/widgets/adress_page_widgets/form_fields.dart';

class AdressPageBody extends StatefulWidget {
  const AdressPageBody({super.key});

  @override
  State<AdressPageBody> createState() => _AdressPageBodyState();
}

class _AdressPageBodyState extends State<AdressPageBody> {
  final formKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();

  TextEditingController email = TextEditingController();

  TextEditingController adress = TextEditingController();

  TextEditingController appartement = TextEditingController();

  TextEditingController city = TextEditingController();

  TextEditingController numberOfMonthExpiration = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              FormFields(
                name: name,
                email: email,
                adress: adress,
                city: city,
                appartement: appartement,
                numberOfMonthExpiration: numberOfMonthExpiration,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
