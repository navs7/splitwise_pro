import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/constants/colors.dart';

class MyTextFieldFormTheme {
  const MyTextFieldFormTheme._();

  static InputDecorationTheme myLightInputDecorationTheme =
      const InputDecorationTheme(
          prefixIconColor: tSecondaryColor,
          labelStyle: TextStyle(color: tSecondaryColor),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: tSecondaryColor, width: 2.0),
          ));

  static InputDecorationTheme myDarkInputDecorationTheme =
      const InputDecorationTheme(
          prefixIconColor: tPrimaryColor,
          labelStyle: TextStyle(color: tPrimaryColor),
          border: OutlineInputBorder(),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: tPrimaryColor, width: 2.0),
          ));
}
