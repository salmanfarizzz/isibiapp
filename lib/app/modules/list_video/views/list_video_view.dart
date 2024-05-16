import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../../shared/theme.dart';
import '../controllers/list_video_controller.dart';

class ListVideoView extends GetView<ListVideoController> {
  final lViewC = Get.find<ListVideoController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back_ios_rounded,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        title: Text(
          lViewC.category,
          style: bold.copyWith(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Obx(() => ListView.builder(
          itemCount: lViewC.data.length,
          itemBuilder: (context, index) {
            final videoItem = lViewC.data[index];
            return ListTile(
              contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
              focusColor: Colors.amber,
              leading:
                  // Container(
                  //   decoration: BoxDecoration(
                  //       // shape: BoxShape.circle,
                  //       borderRadius: BorderRadius.all(Radius.circular(10)),
                  //       border: Border.all(
                  //           width: 1,
                  //           color: Colors.black,
                  //           style: BorderStyle.solid)),
                  //   margin: EdgeInsets.fromLTRB(2, 5, 2, 0),
                  //   height: 100,
                  //   width: 100,
                  //   child:
                  ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: SizedBox.fromSize(
                  size: Size.fromRadius(50),
                  child: Image.network(
                    videoItem['thumbnail'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // ),
              title: Text(
                videoItem['kamus_title'],
                style: semibold.copyWith(fontSize: 15),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              subtitle: Text(
                videoItem['kamus_description'],
                style: regular.copyWith(fontSize: 13),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              onTap: () {
                // Handle tap event (e.g., open news article)
                Get.toNamed(Routes.VIDEO, arguments: videoItem);
                print(videoItem);
              },
            );
          })),
    );
  }
}
