import 'package:ecomm/utils/app_constant.dart';
import 'package:flutter/material.dart';

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
          backgroundColor: AppConstant.appMainColor),
    );
  }
}
