import 'package:get/get.dart';

class DetailController extends GetxController {
  var newsData;

  final count = 0.obs;
  @override
  void onInit() {
    newsData = Get.arguments;
    print(newsData);
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
