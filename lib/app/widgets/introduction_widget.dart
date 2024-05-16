import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isibi/app/shared/theme.dart';

class IntroductionWidget extends StatelessWidget {
  String? image;
  String? title;
  String? subtitle;
  IntroductionWidget({this.image, this.title, this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      child: Column(
        children: [
          Container(
            height: Get.height * 0.65,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icons/${image}'),
                scale: 1,
              ),
            ),
          ),
          Container(
            height: Get.height * 0.35,
            width: Get.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: Colors.white,
            ),
            padding: EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${title}',
                  style: semibold.copyWith(fontSize: 23),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  '${subtitle}',
                  style: regular.copyWith(
                    fontSize: 15,
                    color: grey,
                  ),
                  textAlign: TextAlign.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
