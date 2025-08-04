import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fruit_hub/core/utils/assets.dart';
import 'package:fruit_hub/core/utils/thems.dart';
import 'package:fruit_hub/generated/l10n.dart';

// ignore: must_be_immutable
class CustomeSearchTextFormField extends StatelessWidget {
  CustomeSearchTextFormField({
    super.key,
    this.onSaved,

    this.validator,
    this.controller,
  });
  String? Function(String?)? validator;
  Function(String)? onSaved;

  TextEditingController? controller;
  TextInputType? textType;
  OutlineInputBorder buildborder({Color bordercolor = Colors.white}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: bordercolor, width: 2),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,

      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withAlpha(50),
            spreadRadius: .1,
            blurRadius: 10,
            blurStyle: BlurStyle.outer,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: TextFormField(
        enableSuggestions: true,
        controller: controller,
        validator: (value) {
          return validator != null ? validator!(value) : null;
        },
        onChanged: onSaved,
        keyboardType: textType,
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          suffixIcon: SvgPicture.asset(
            fit: BoxFit.scaleDown,
            Assets.assetsImagesFilteringIcon,
          ),
          prefixIcon: SvgPicture.asset(
            Assets.assetsImagesSearchIcon,
            fit: BoxFit.scaleDown,
          ),
          hintText: S.current.searchHint,
          hintStyle: Thems.textStyle13SB,
          enabledBorder: buildborder(),

          errorBorder: buildborder(),
          focusedBorder: buildborder(),
          focusedErrorBorder: buildborder(),
        ),
      ),
    );
  }
}
