import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/widgts/custome_text_form_field.dart';
import 'package:fruit_hub/features/check_out/domain/entities/order_entity.dart';
import 'package:fruit_hub/generated/l10n.dart';

class FormFields extends StatelessWidget {
  const FormFields({
    super.key,
    required this.name,
    required this.email,
    required this.adress,
    required this.city,
    required this.appartement,

    required this.phone,
  });

  final TextEditingController phone;
  final TextEditingController name;
  final TextEditingController email;
  final TextEditingController adress;
  final TextEditingController city;
  final TextEditingController appartement;

  @override
  Widget build(BuildContext context) {
    var read = context.read<OrderEntity>().adressEntity;
    return Column(
      children: [
        CustomeTextFormField(
          onSaved: (value) {
            read.name = value;
          },
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
          onSaved: (value) {
            read.email = value;
          },
          textType: TextInputType.emailAddress,
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
          onSaved: (value) {
            read.adress = value;
          },
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
          onSaved: (value) {
            read.adressDetails = value;
          },
          controller: city,
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
          controller: appartement,
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
          onSaved: (value) {
            read.name = value;
          },
          controller: phone,
          hintText: S.current.phone,
          validator: (value) {
            if (value == null || value.isEmpty) {
              return S.current.please_enter_phone;
            }

            return null; // valid
          },
        ),
        SizedBox(height: 16),
      ],
    );
  }
}
