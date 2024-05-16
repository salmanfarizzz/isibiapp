import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isibi/app/routes/app_pages.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:isibi/app/widgets/introduction_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/introduction_controller.dart';

class IntroductionView extends GetView<IntroductionController> {
  final introC = Get.find<IntroductionController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        PageView(
          controller: controller.indicator,
          onPageChanged: ((value) {
            controller.page.value = value;
            print(controller.page.value);
          }),
          children: [
            // start page onboarding
            IntroductionWidget(
              image: 'intro1.png',
              title: 'Penerjemah Bahasa Isyarat',
              subtitle: 'Scan Gerak Tangan Menjadi Bahasa Isyarat',
            ),
            IntroductionWidget(
              image: 'intro2.png',
              title: 'Tonton Video dan Praktikum',
              subtitle:
                  'Di Aplikasi ini, kamu bisa nonton video tutorial bahasa isyarat dan kamu bisa langsung praktikan',
            ),
            IntroductionWidget(
              image: 'intro3.png',
              title: 'Menghubungkan kepada Teman Tuli',
              subtitle: 'Terhubung dengan Teman Tuli Tanpa Batas',
            ),
            // end
          ],
        ),
        Container(
          alignment: Alignment(0.8, -0.85),
          child: GestureDetector(
            onTap: () {
              controller.indicator.jumpToPage(3);
            },
            child: Text('Skip', style: medium.copyWith(fontSize: 20)),
          ),
        ),
        Obx(() => Container(
              alignment: Alignment(0, 0.85),
              child: controller.page.value != 2
                  ? SmoothPageIndicator(
                      controller: controller.indicator,
                      count: 3,
                      effect: SlideEffect(
                        activeDotColor: blueisibi,
                        spacing: 8.0,
                        radius: 4.0,
                        dotWidth: 8,
                        dotHeight: 8,
                        dotColor: darkGrey,
                      ),
                    )
                  : GestureDetector(
                      onTap: () {
                        introC.setStatus();
                        // Get.offAllNamed(Routes.HOME);
                      },
                      child: Container(
                        height: 55,
                        width: Get.width * 0.8,
                        alignment: Alignment.center,
                        padding: EdgeInsets.symmetric(vertical: 14),
                        decoration: BoxDecoration(
                          color: blueisibi,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(
                          'Mulai',
                          style: semibold.copyWith(
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
            ))
      ],
    ));
  }
}
