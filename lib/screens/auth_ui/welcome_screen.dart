import 'package:ecomm/screens/auth_ui/login_screen.dart';
import 'package:ecomm/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppConstant.appSecColor,
        title: const Text(
          "Welcome to Ecomm",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(
        children: [
          Container(
            child: Lottie.asset("assets/images/splash-icon.json"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              "Happy Shopping",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: Get.height / 12,
          ),
          Container(
            height: Get.height / 12,
            width: Get.width / 1.2,
            decoration: BoxDecoration(
                color: AppConstant.appSecColor,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton.icon(
                onPressed: () {},
                icon: Image.asset(
                  "assets/images/google.png",
                  width: Get.width / 12,
                  height: Get.height / 20,
                ),
                label: const Text(
                  "Sign in with Google",
                  style: TextStyle(color: AppConstant.appTextColor),
                )),
          ),
          SizedBox(
            height: Get.height / 35,
          ),
          Container(
            height: Get.height / 12,
            width: Get.width / 1.2,
            decoration: BoxDecoration(
                color: AppConstant.appSecColor,
                borderRadius: BorderRadius.circular(20)),
            child: TextButton.icon(
                onPressed: () {
                  Get.offAll( const LoginScreen() );
                },
                icon: const Icon(
                  Icons.email,
                  size: 21,
                  color: Colors.white,
                ),
                label: const Text(
                  "Sign in with Email",
                  style: TextStyle(color: AppConstant.appTextColor),
                )),
          ),
        ],
      ),
    );
  }
}
