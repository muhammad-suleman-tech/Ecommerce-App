import 'package:ecomm/screens/auth_ui/login_screen.dart';
import 'package:ecomm/utils/app_constant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        centerTitle: true,
        backgroundColor: AppConstant.appSecColor,
        title: const Text(
          "Sign Up",
          style: TextStyle(color: AppConstant.appTextColor),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(
              height: Get.height / 20,
            ),
            const Text(
              "Welcome to my App",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: AppConstant.appMainColor),
            ),
            SizedBox(
              height: Get.height / 20,
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(),
                    hintText: "Enter Username",
                    labelText: "username"),
              ),
            ),
            SizedBox(
              height: Get.height / 35,
            ),
            Container(
              width: Get.width,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                keyboardType: TextInputType.phone,
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.phone),
                    contentPadding: EdgeInsets.only(left: 5),
                    border: OutlineInputBorder(),
                    hintText: "Enter Phone",
                    labelText: "Phone"),
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
                    prefixIcon: Icon(Icons.location_on_sharp),
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.only(left: 5),
                    hintText: "Enter City",
                    labelText: "City"),
              ),
            ),
            SizedBox(
              height: Get.height / 35,
            ),
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
                    "SIGN UP",
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
                  "Already have an account ?",
                  style: TextStyle(
                      color: AppConstant.appMainColor,
                      fontWeight: FontWeight.bold),
                ),
                InkWell(
                  onTap: (){
                    Get.offAll(()=> const LoginScreen());
                  },
                  child: const Text(
                    " Sign In ",
                    style: TextStyle(
                        color: AppConstant.appMainColor,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
