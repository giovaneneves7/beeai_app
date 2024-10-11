import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:beeai/features/splash/screens/start_screen.dart';
import 'package:beeai/theme/custom_theme.dart';
import 'package:beeai/helper/route_helper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: CustomTheme.lightTheme,
      themeMode: ThemeMode.light,
      home: StartScreen(), 
      getPages: RouteHelper.routes,
    );
  }
}
