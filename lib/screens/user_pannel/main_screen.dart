import 'package:ecomm/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../auth_ui/welcome_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Text(
            AppConstant.appName,
            style: const TextStyle(color: AppConstant.appTextColor),
          ),
          actions: [
            InkWell(
              onTap: () async {
                GoogleSignIn googleSignIn = GoogleSignIn();
               await googleSignIn.signOut();
                Get.offAll(()=> const WelcomeScreen());
              },
              child: const Padding(
                padding:  EdgeInsets.all(8.0),
                child: Icon(Icons.logout_outlined, color: Colors.white,),
              ),
            )
          ],
          backgroundColor: AppConstant.appMainColor),
    );
  }
}
