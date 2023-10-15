import 'package:ecomm/screens/auth_ui/login_screen.dart';
import 'package:ecomm/screens/auth_ui/splash_screen.dart';
import 'package:ecomm/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'screens/auth_ui/welcome_screen.dart';

// import 'screens/user_pannel/main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppConstant.appSecColor),
        useMaterial3: true,
      ),
      home: const SplashScreen(),
    );
  }
}
