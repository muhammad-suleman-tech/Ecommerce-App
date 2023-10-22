import 'package:ecomm/screens/auth_ui/signup.dart';
import 'package:ecomm/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstant.appSecColor,
        title: const Text(
          "Sign In",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Lottie.asset("assets/images/splash-icon.json"),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            const Text(
              "Log In in your account.",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: Get.height / 40,
            ),
            Column(
              children: [
                Container(
                  width: Get.width,
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        contentPadding: EdgeInsets.only(left: 5),
                        border: OutlineInputBorder(),
                        hintText: "Enter Email",
                        labelText: "Email"),
                  ),
                ),
                SizedBox(
                  height: Get.height / 35,
                ),
                Container(
                  width: Get.width,
                  margin: const EdgeInsets.only(bottom: 5),
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: TextFormField(
                    cursorColor: AppConstant.appSecColor,
                    decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.key),
                        suffixIcon: Icon(Icons.visibility),
                        border: OutlineInputBorder(),
                        contentPadding: EdgeInsets.only(left: 5),
                        hintText: "Enter Password",
                        labelText: "Password"),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(right: 10),
                  child: const Text(
                    "Forget the Password ?",
                    style: TextStyle(
                        color: AppConstant.appSecColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                 SizedBox(
                  height: Get.height / 20,
                ),
                Container(
                  height: Get.height / 18,
                  width: Get.width / 2,
                  decoration: BoxDecoration(
                      color: AppConstant.appSecColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "SIGN IN",
                        style: TextStyle(color: AppConstant.appTextColor),
                      )),
                ),
                SizedBox(
                  height: Get.height / 20,
                ),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have an account ?",
                      style: TextStyle(
                          color: AppConstant.appMainColor,
                          fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: (){
                        Get.to(()=> const SignUpScreen());
                      },
                      child: const Text(
                        " Sign Up ",
                        style: TextStyle(
                            color: AppConstant.appMainColor,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),

              ],
            )
          ],
        ),
      ),
    );
  }
}
