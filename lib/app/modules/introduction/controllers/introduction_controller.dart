import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:isibi/app/routes/app_pages.dart';

class IntroductionController extends GetxController {
  final getStorage = GetStorage();
  PageController indicator = PageController();

  RxInt page = 0.obs;

  final count = 0.obs;
  @override
  void onInit() {
    if (getStorage.read("status") == true) {
      Future.delayed(Duration(microseconds: 2000), () {
        Get.offAllNamed(Routes.HOME);
      });
    }
    // Future.delayed(Duration(microseconds: 2000), () {
    //   // Get.offAllNamed(Routes.HOME);
    //   if (getStorage.read("status") == true) {
    //     Get.offAllNamed(Routes.HOME);
    //   } else if (getStorage.read("status") == null) {
    //     getStorage.write("status", true);

    //     Get.offAllNamed(Routes.INTRODUCTION);
    //   }
    //   getStorage.read("status")
    //       ? Get.offAllNamed(Routes.HOME)
    //       : Get.offAllNamed(Routes.INTRODUCTION);
    // });
    super.onInit();
    // if (getStorage.read("status") == true) {
    //   Get.offAllNamed(Routes.HOME);
    // } else {
    //   print(getStorage.read("status"));
    // }

    print(getStorage.read("status"));
  }

  @override
  void onReady() {
    // Future.delayed(Duration(microseconds: 2000), () {
    // getStorage.read("status")
    //     ? Get.offAllNamed(Routes.HOME)
    //     : Get.offAllNamed(Routes.INTRODUCTION);
    // });
    super.onReady();
    // if (getStorage.read("status") == true) {
    //   Get.offAllNamed(Routes.HOME);
    // } else {
    //   print(getStorage.read("status"));
    // }
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  setStatus() {
    getStorage.write("status", true);
    print(getStorage.read("status"));
    Get.offAllNamed(Routes.HOME);
  }
}
