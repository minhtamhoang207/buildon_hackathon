import 'package:flutter/material.dart';

class AppColor {
  static Color lightScaffoldBackgroundColor = hexToColor('#F9F9F9');
  static Color darkScaffoldBackgroundColor = hexToColor('#2F2E2E');
  static Color secondaryAppColor = hexToColor('#22DDA6');
  static Color secondaryDarkAppColor = Colors.white;
  static Color tipColor = hexToColor('#B6B6B6');
  static Color lightGray = const Color(0xFFF6F6F6);
  static Color darkGray = const Color(0xFF9F9F9F);
  static Color black = const Color(0xFF000000);
  static Color white = const Color(0xFFFFFFFF);
  static Color red = Colors.red;

  static Color lightSeaGreen = const Color(0xFF26B899);
  static Color darkLiver = const Color(0xFF080708);
  static Color primaryColor = const Color(0xFFECF0F3);
  static Color appBlue = const Color(0xFF0E6BA8);
}

Color hexToColor(String hex) {
  return Color(
    int.parse(hex.substring(1), radix: 16) +
        (hex.length == 7 ? 0xff000000 : 0x00000000),
  );
}