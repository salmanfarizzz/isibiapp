import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:isibi/app/models/screen_params.dart';
import 'package:isibi/app/shared/page_index_controller.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:isibi/app/widgets/detector_widget.dart';

/// [DetectorView] stacks [DetectorWidget]
class DetectorView extends StatelessWidget {
  final pageC = Get.find<PageIndexController>();

  // const DetectorView({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    return Scaffold(
        key: GlobalKey(),
        appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.white,
            title: Text(
              "Penerjemah",
              style: bold.copyWith(fontSize: 20, color: Colors.black),
            )),
        body: const DetectorWidget(),
        bottomNavigationBar: CurvedNavigationBar(
          height: 60,
          index: 1,
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
