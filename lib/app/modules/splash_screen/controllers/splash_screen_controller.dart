import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:isibi/app/routes/app_pages.dart';

class SplashScreenController extends GetxController {
  final getStorage = GetStorage();

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();

    print(getStorage.read("status"));
  }

  @override
  void onReady() {
    super.onReady();
    print(getStorage.read("status"));

    print(getStorage.read("status"));
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
