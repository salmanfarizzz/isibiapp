import 'package:get/get.dart';

import '../controllers/learn_controller.dart';

class LearnBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LearnController>(
      () => LearnController(),
    );
  }
}
