import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/widgts/custome_text_form_field.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
    required this.name,
    required this.email,
    required this.adress,
    required this.city,
    required this.appartement,

    required this.numberOfMonthExpiration,
  });
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController adress;
  final TextEditingController city;
  final TextEditingController appartement;

  final TextEditingController numberOfMonthExpiration;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomeTextFormField(
          controller: name,
          hintText: S.current.name,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.current.Please_enter_your_name;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          textType: TextInputType.number,
          controller: email,
          hintText: S.current.Email,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.current.Please_enter_your_email;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          controller: adress,
          hintText: S.current.address,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.current.please_enter_address;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
        CustomeTextFormField(
          textType: TextInputType.number,
          controller: appartement,
          hintText: S.current.city,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.current.please_enter_city;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),

        CustomeTextFormField(
          textType: TextInputType.number,

          controller: numberOfMonthExpiration,
          hintText: S.current.floor_apartment,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.current.please_enter_floor_apartment;
            }

            return null; // valid
          },
        ),

        SizedBox(height: 16),
        CustomeTextFormField(
          controller: city,
          maxLines: 5,
          hintText: " produt description",
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "please enter your product description";
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
