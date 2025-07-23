import 'package:flutter/material.dart';

class Thems {
  static const Color kprimarycolor = Color(0xff1B5E37);
  static const Color kLightprimarycolor = Color(0xff2D9F5D);

  static const Color orange = Color(0xffF4A91F);
  static const Color black = Color(0xff0C0D0D);
  static const Color gray = Color(0xff4E5556);
  static const Color lightgray = Color(0xff949D9E);

  static TextStyle textStyle23B = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 23,
    color: black,
  );
  static TextStyle textStyle19B = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 19,
    color: black,
  );
  static TextStyle textStyle13SB = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 13,
    color: lightgray,
  );
  static ThemeData lightTheme = ThemeData(
    primaryColor: kprimarycolor,
    fontFamily: "Cairo",
    appBarTheme: AppBarTheme(centerTitle: true, titleTextStyle: textStyle19B),
  );
}
