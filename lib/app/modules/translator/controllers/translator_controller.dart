import 'package:get/get.dart';
// import 'package:flutter_tflite/flutter_tflite.dart';
// import 'package:tflite_v2/tflite_v2.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:camera/camera.dart';
import 'package:get_storage/get_storage.dart';
import 'package:permission_handler/permission_handler.dart';

class TranslatorController extends GetxController {
  final getStorage = GetStorage();

  late CameraController cameraController;

  late List<CameraDescription> cameras;

  late CameraImage cameraImage;

  // var isCameraInitialized = false.obs;
  // var cameraCount = 0;

  // var x, y, w, h = 0.0;

  // var label = "";

  // final webViewController = WebViewController()
  //   ..loadRequest(Uri.parse("https://cam.isibi.web.id/"));

  // final count = 0.obs;

  // // void testModel() async {
  // //   var recognition = await Tflite.runModelOnImage(
  // //       path: 'assests/image/a.png', imageMean: 255, asynch: true);
  // //   print(recognition.toString());
  // // }

  // Future objectDetector(CameraImage image) async {
  //   var detector = await Tflite.detectObjectOnFrame(
  //       bytesList: image.planes.map((e) {
  //         return e.bytes;
  //       }).toList(),
  //       model: "SSDMobileNet",
  //       asynch: true,
  //       imageHeight: image.height,
  //       imageWidth: image.width,
  //       imageMean: 127.5,
  //       imageStd: 127.5,
  //       numResultsPerClass: 1,
  //       rotation: 90,
  //       threshold: 0.4);

  //   if (detector != null) {
  //     // var result = detector?.map(
  //     //   (result) {
  //     //     label.value = result['label'];
  //     //     x = result['rect']['x'];
  //     //     y = result['rect']['y'];
  //     //     w = result['rect']['w'];
  //     //     h = result['rect']['h'];
  //     //   },
  //     // );
  //     // print("Result is ${detector}");
  //     // print(label.value);
  //     // label = detector['detectedClass'].toString();

  //     var ourDetectorObject = detector.first;

  //     if (ourDetectorObject['confidenceInClass'] * 100 > 45) {
  //       label = ourDetectorObject['detectedClass'];
  //       x = ourDetectorObject['rect']['x'];
  //       y = ourDetectorObject['rect']['y'];
  //       w = ourDetectorObject['rect']['w'];
  //       h = ourDetectorObject['rect']['h'];
  //     }
  //     update();
  //     print("Result is ${detector}");
  //     print(label);
  //     // return detector;
  //   }
  // }

  // Future initCamera() async {
  //   if (await Permission.camera.request().isGranted) {
  //     cameras = await availableCameras();

  //     cameraController = CameraController(cameras[0], ResolutionPreset.medium);

  //     await cameraController.initialize().then((value) {
  //       cameraController.startImageStream((image) {
  //         cameraCount++;

  //         if (cameraCount % 10 == 0) {
  //           cameraCount = 0;
  //           objectDetector(image);
  //         }
  //         update();
  //       });
  //     });
  //     isCameraInitialized(true);
  //     update();
  //   } else {
  //     print("Permission denied");
  //   }
  // }

  // Future initTfLite() async {
  //   // Tflite.close();
  //   await Tflite.loadModel(
  //     model: "assets/models/model.tflite",
  //     labels: "assets/models/labels.txt",
  //     isAsset: true,
  //     numThreads: 1,
  //     useGpuDelegate: false,
  //   );
  //   // useGpuDelegate: false
  // }

  @override
  void onInit() {
    // testModel();

    // initTfLite();
    // initCamera();
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
}
