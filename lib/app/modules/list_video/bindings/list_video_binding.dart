import 'package:get/get.dart';

import '../controllers/list_video_controller.dart';

class ListVideoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ListVideoController>(
      () => ListVideoController(),
    );
  }
}
