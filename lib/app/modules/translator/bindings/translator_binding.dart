import 'package:get/get.dart';

import '../controllers/translator_controller.dart';

class TranslatorBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TranslatorController>(
      () => TranslatorController(),
    );
  }
}
