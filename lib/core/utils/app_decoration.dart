import 'package:flutter/material.dart';
import 'package:fruit_hub/core/utils/thems.dart';

abstract class AppDecoration {
  static BoxDecoration greyBoxDecoration = BoxDecoration(
    borderRadius: BorderRadius.circular(4),
    color: Thems.lightgray,
    border: Border.all(color: Colors.transparent),
  );
}
