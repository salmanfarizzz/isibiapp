import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';
import 'package:http/http.dart' as http;

class VideoController extends GetxController {
  var category;
  late VideoPlayerController videoPlayerController;
  TextEditingController textEditingController = TextEditingController();
  ChewieController? chewieController;

  var data = [].obs;
  var dataVideoKata = [].obs;
  var urlVideo = [].obs;

  final count = 0.obs;
  @override
  void onInit() {
    category = Get.arguments;

    initializedPlayer();

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

  Future<void> initializedPlayer() async {
    videoPlayerController =
        VideoPlayerController.networkUrl(Uri.parse(category["kamus_url"]));

    await Future.wait([videoPlayerController.initialize()]);

    chewieController = ChewieController(
        videoPlayerController: videoPlayerController,
        autoPlay: true,
        looping: true,
        aspectRatio: 16 / 9,
        materialProgressColors: ChewieProgressColors(
            playedColor: Colors.lightBlue,
            handleColor: Colors.blue,
            backgroundColor: Colors.white,
            bufferedColor: Colors.grey),
        autoInitialize: true);
    update();
  }
}
