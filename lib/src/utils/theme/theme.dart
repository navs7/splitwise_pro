import 'package:flutter/material.dart';
import 'package:splitwise_pro/src/utils/theme/widget_theme/elevated_button_theme.dart';
import 'package:splitwise_pro/src/utils/theme/widget_theme/outlined_button_theme.dart';
import 'package:splitwise_pro/src/utils/theme/widget_theme/text_theme.dart';

class MyTheme{

MyTheme._(); // * user cant access theme using instance of this class, thats why private constructor

  static ThemeData lightwaTheme = ThemeData(
    brightness: Brightness.light,
    primarySwatch: const MaterialColor(myGreen, <int, Color>{
      50: Color(0x1A00FF00),
      100: Color(0x3300FF00),
      200: Color(0x4D00FF00),
      300: Color(0x6600FF00),
      400: Color(0x8000FF00),
      500: Color(myGreen),
      600: Color(0x9900FF00),
      700: Color(0xB300FF00),
      800: Color(0xCC00FF00),
      900: Color(0xE600FF00)
    }),
    textTheme: MyTextTheme.myLightTextTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.myLightOutlineButtonTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.myLightElevatedButtonTheme,
  );
  static const int myGreen = 0xFF00FF00;


  static ThemeData darkwaTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MyTextTheme.myDarkTextTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.myDarkOutlineButtonTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.myDarkElevatedButtonTheme,
  );
}