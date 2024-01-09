import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:splitwise_pro/src/utils/theme/theme.dart';
import 'package:splitwise_pro/src/features/authentication/screens/splash_screen/splash_screen.dart';


void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key? key}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: MyTheme.lightwaTheme,
      darkTheme: MyTheme.darkwaTheme,
      themeMode: ThemeMode.system,
      home: MySplashScreen(),
      debugShowCheckedModeBanner: false,
      );
  }
}
