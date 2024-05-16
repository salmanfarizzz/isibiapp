import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isibi/app/routes/app_pages.dart';
import 'package:isibi/app/shared/theme.dart';

Widget cardNews() {
  return GestureDetector(
    onTap: () {
      Get.toNamed(Routes.NEWS);
    },
    child: SizedBox(
        width: Get.width * 0.7,
        height: Get.height * 0.2,
        child: Stack(
          children: [
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              // elevation: 10,
              child: Column(
                children: [
                  SizedBox(
                      width: Get.width * 0.8,
                      height: Get.height * 0.13,
                      child: Image.asset("assets/images/berita1.webp",
                          fit: BoxFit.fitWidth))
                ],
              ),
            ),
            Positioned(
                // top: 10,
                bottom: 0,
                left: 5,
                child: SizedBox(
                  height: 50,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 3, right: 3),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Etika Saat Berinteraksi Dengan Kaum Tuli",
                          style: bold.copyWith(fontSize: 12),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        // SizedBox(
                        //   height: 10,
                        // ),
                      ],
                    ),
                  ),
                )),
          ],
        )),
  );
}

class CardNews extends StatelessWidget {
  final String image;
  final String title;
  final String content;
  const CardNews({
    Key? key,
    required this.image,
    required this.title,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final newsItem = {
      "post_title": this.title,
      "post_content": this.content,
      "post_thumbnail": this.image,
    };
    return GestureDetector(
      onTap: () {
        // groupingData(image, String)
        Get.toNamed(Routes.DETAIL, arguments: newsItem);
      },
      child: SizedBox(
          width: Get.width * 0.8,
          height: Get.height * 0.23,
          child: Stack(
            children: [
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                // elevation: 10,
                child: Column(
                  children: [
                    SizedBox(
                        width: Get.width * 0.8,
                        height: Get.height * 0.16,
                        child: Image.network(image, fit: BoxFit.fill))
                  ],
                ),
              ),
              Positioned(
                  // top: 10,
                  bottom: 10,
                  left: 5,
                  child: SizedBox(
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3, right: 3),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            title,
                            style: bold.copyWith(fontSize: 12),
                            maxLines: 2,
                            overflow: TextOverflow.visible,
                          ),
                        ],
                      ),
                    ),
                  )),
            ],
          )),
    );
  }
}

groupingData(String image, String) {}
