// import 'package:easy_search_bar/easy_search_bar.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isibi/app/routes/app_pages.dart';
import 'package:isibi/app/shared/page_index_controller.dart';
// import 'package:isibi/app/data/models/detail_news.dart';
// import 'package:isibi/app/data/models/news.dart';
import 'package:isibi/app/shared/page_index_controller.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:isibi/app/widgets/card.dart';

import '../controllers/news_controller.dart';

class NewsView extends GetView<NewsController> {
  final pageC = Get.find<PageIndexController>();
  final newsC = Get.find<NewsController>();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 2,
          backgroundColor: Colors.white,
          // leading: GestureDetector(
          //   onTap: () {
          //     Get.back();
          //   },
          //   child: Icon(
          //     Icons.arrow_back_ios_rounded,
          //     color: Colors.black,
          //   ),
          // ),
          centerTitle: true,
          title: Text(
            "Artikel",
            style: bold.copyWith(fontSize: 20, color: Colors.black),
          ),
        ),
        body: Obx(() => ListView.builder(
            itemCount: newsC.data.length,
            itemBuilder: (context, index) {
              final newsItem = newsC.data[index];
              return ListTile(
                contentPadding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                focusColor: Colors.amber,
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(50),
                    child: Image.network(
                      newsItem['post_thumbnail'],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                // ),
                title: Text(
                  newsItem['post_title'],
                  style: semibold.copyWith(fontSize: 15),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                subtitle: Text(
                  newsItem['post_content'],
                  style: regular.copyWith(fontSize: 13),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                onTap: () {
                  // Handle tap event (e.g., open news article)
                  Get.toNamed(Routes.DETAIL, arguments: newsItem);
                  print(newsItem);
                },
              );
            })),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: 2,
          color: Color(0xff034A9E),
          animationCurve: Curves.bounceInOut,
          animationDuration: Duration(milliseconds: 300),
          backgroundColor: Colors.white,
          // style: TabStyle.fixedCircle,
          items: [
            Icon(
              Icons.home,
              size: 40,
              color: Colors.white,
            ),
            Icon(
              Icons.camera_alt_outlined,
              size: 40,
              color: Colors.white,
            ),
            Icon(
              Icons.newspaper,
              size: 40,
              color: Colors.white,
            )
          ],
          onTap: (index) {
            pageC.changePage(index);
          },
        ));
  }
}
