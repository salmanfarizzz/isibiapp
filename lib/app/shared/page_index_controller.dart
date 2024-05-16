import 'package:get/get.dart';
import 'package:isibi/app/routes/app_pages.dart';

class PageIndexController extends GetxController {
  RxInt pageIndex = 0.obs;
  RxInt current = 0.obs;

  final count = 0.obs;

  void changePage(int index) async {
    pageIndex.value = index;
    switch (index) {
      case 0:
        Get.offAllNamed(Routes.HOME);
        break;
      case 1:
        Get.offAllNamed(Routes.TRANSLATOR);
        break;
      case 2:
        Get.offAllNamed(Routes.NEWS);
        break;
      default:
        Get.offAllNamed(Routes.HOME);
    }
  }

  void changeIndex(int index) async {
    current.value = index;
  }

  @override
  void onInit() {
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
