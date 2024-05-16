import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:isibi/app/routes/app_pages.dart';
import 'package:isibi/app/shared/theme.dart';

import '../controllers/learn_controller.dart';

class LearnView extends GetView<LearnController> {
  final learnC = Get.find<LearnController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 3,
      //   title: Text("Pembelajaran"),
      // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  "assets/images/atas.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.LIST_VIDEO, arguments: "kata");
                      },
                      child: Container(
                        // decoration: BoxDecoration(border: Border.symmetric()),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: Get.height * 0.1,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //       blurRadius: 30,
                                //       color: Colors.grey,
                                //       offset: Offset(0, -10))
                                // ]
                              ),
                              child: Image.asset("assets/icons/salam.png",
                                  height: 5, width: 50),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Kata Sapaan",
                                  style: bold.copyWith(fontSize: 18),
                                ),
                                Text(
                                  "Belajar kata sapaan melalui\nbahasa isyarat",
                                  style: regular.copyWith(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.LIST_VIDEO, arguments: "salam");
                      },
                      child: Container(
                        // decoration: BoxDecoration(border: Border.symmetric()),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: Get.height * 0.1,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //       blurRadius: 30,
                                //       color: Colors.grey,
                                //       offset: Offset(0, -10))
                                // ]
                              ),
                              child: Image.asset("assets/icons/salam.png",
                                  height: 5, width: 50),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Salam",
                                  style: bold.copyWith(fontSize: 18),
                                ),
                                Text(
                                  "Belajar salam melalui\nbahasa isyarat",
                                  style: regular.copyWith(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.LIST_VIDEO, arguments: "perkenalan");
                      },
                      child: Container(
                        // decoration: BoxDecoration(border: Border.symmetric()),
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: Get.height * 0.1,
                        // color: Colors.amber,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                                // boxShadow: [
                                //   BoxShadow(
                                //       blurRadius: 30,
                                //       color: Colors.grey,
                                //       offset: Offset(0, -10))
                                // ]
                              ),
                              child: Image.asset("assets/icons/salam.png",
                                  height: 5, width: 50),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Perkenalan",
                                  style: bold.copyWith(fontSize: 18),
                                ),
                                Text(
                                  "Belajar perkenalan melalui\nbahasa isyarat",
                                  style: regular.copyWith(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.LIST_VIDEO, arguments: "angka");
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: Get.height * 0.1,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/icons/angka.png",
                                  height: 5, width: 50),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Angka",
                                  style: bold.copyWith(fontSize: 18),
                                ),
                                Text(
                                  "Belajar angka melalui\nbahasa isyarat",
                                  style: regular.copyWith(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.LIST_VIDEO, arguments: "abjad");
                      },
                      child: Container(
                        padding: EdgeInsets.all(5),
                        width: double.infinity,
                        height: Get.height * 0.1,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 0, 15, 0),
                              height: 55,
                              width: 55,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.grey),
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset("assets/icons/sapaan.png",
                                  height: 5, width: 50),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Abjad",
                                  style: bold.copyWith(fontSize: 18),
                                ),
                                Text(
                                  "Belajar abjad melalui\nbahasa isyarat",
                                  style: regular.copyWith(fontSize: 13),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
