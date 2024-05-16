import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:isibi/app/shared/theme.dart';

import '../controllers/detail_controller.dart';

class DetailView extends GetView<DetailController> {
  final detailC = Get.find<DetailController>();

  DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    // double width = MediaQuery.of(context).size.width;
    return Scaffold(
      // backgroundColor: Colors.amber,
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  height: height * 0.4,
                  width: double.infinity,
                  child: Image.network(
                    detailC.newsData['post_thumbnail'],
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                    top: 16,
                    left: 13,
                    child: GestureDetector(
                      onTap: () => Get.back(),
                      child: Container(
                        child: Icon(Icons.arrow_back_rounded),
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                      ),
                    )),
                Positioned(
                    bottom: 85,
                    left: 13,
                    child: Container(
                      child: Text(
                        "Artikel Berita",
                        style: bold.copyWith(fontSize: 10),
                      ),
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Color(0xffF79824),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    )),
                Container(
                  height: height * 0.09,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            detailC.newsData['post_title'],
                            maxLines: 2,
                            style: bold.copyWith(fontSize: 20),
                          ),
                        ],
                      )),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 5, 0, 0),
              child: Row(
                children: [
                  Text(
                    'Trending',
                    // detailC.newsData['created_at'],
                    style: medium.copyWith(fontSize: 13, color: Colors.black),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "7 jam yang lalu",
                    style: medium.copyWith(fontSize: 13, color: Colors.black),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(13, 10, 0, 0),
              child: Text(
                detailC.newsData['post_content'],
                style: medium.copyWith(fontSize: 17, color: Colors.black),
              ),
            )
          ],
        )),
      ),
    );
  }
}
