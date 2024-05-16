import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:isibi/app/widgets/chewie_list_item.dart';
import 'package:video_player/video_player.dart';

import '../controllers/video_controller.dart';
import 'package:chewie/chewie.dart';
// import 'package:video_player/video_player.dart';

class VideoView extends GetView<VideoController> {
  final videoC = Get.find<VideoController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        // asdasd
        title: Text('Belajar Bahasa Isyarat',
            style: bold.copyWith(fontSize: 20, color: Colors.black)),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: GetBuilder<VideoController>(
                init: VideoController(),
                builder: (controller) {
                  return AspectRatio(
                    aspectRatio: 16 / 9,
                    child: controller.chewieController != null &&
                            controller.chewieController!.videoPlayerController
                                .value.isInitialized
                        ? Chewie(controller: controller.chewieController!)
                        : Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CircularProgressIndicator(),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Loading",
                                style: regular.copyWith(
                                    color: Colors.black, fontSize: 15),
                              )
                            ],
                          ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 3),
            child: Text(
              videoC.category["kamus_title"],
              style: semibold.copyWith(color: Colors.black, fontSize: 20),
            ),
          ),
        ],
      ),
    );
  }
}
