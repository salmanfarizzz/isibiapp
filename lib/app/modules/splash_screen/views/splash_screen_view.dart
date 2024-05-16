import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:isibi/app/routes/app_pages.dart';

import '../controllers/splash_screen_controller.dart';

class SplashScreenView extends GetView<SplashScreenController> {
  // const SplashScreenView({Key? key}) : super(key: key);
  final getStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), (() {
      Get.offAllNamed(Routes.INTRODUCTION);
    }));
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width * 0.5,
          height: Get.height * 0.5,
          child: Image.asset("assets/icons/isibi.png"),
        ),
      ),
    );
  }
}
