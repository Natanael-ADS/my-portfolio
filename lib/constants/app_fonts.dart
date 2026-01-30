import 'package:flutter/material.dart';

class AppFonts {
  static const String roboto = 'Roboto';

  AppFonts._();

  static TextStyle light(double size, [Color? color]) {
    return TextStyle(
      fontFamily: roboto,
      fontWeight: FontWeight.w300,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle regular(double size, [Color? color]) {
    return TextStyle(
      fontFamily: roboto,
      fontWeight: FontWeight.w400,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle medium(double size, [Color? color]) {
    return TextStyle(
      fontFamily: roboto,
      fontWeight: FontWeight.w500,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle bold(double size, [Color? color]) {
    return TextStyle(
      fontFamily: roboto,
      fontWeight: FontWeight.w700,
      fontSize: size,
      color: color,
    );
  }

  static TextStyle black(double size, [Color? color]) {
    return TextStyle(
      fontFamily: roboto,
      fontWeight: FontWeight.w900,
      fontSize: size,
      color: color,
    );
  }
}
