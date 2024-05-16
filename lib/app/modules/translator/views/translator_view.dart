import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:get/get.dart';
import 'package:isibi/app/models/screen_params.dart';
import 'package:isibi/app/shared/theme.dart';
import 'package:isibi/app/widgets/detector_widget.dart';
import '../../../shared/page_index_controller.dart';
import '../controllers/translator_controller.dart';

class TranslatorView extends GetView<TranslatorController> {
  final translatorC = Get.find<TranslatorController>();
  final pageC = Get.find<PageIndexController>();

  @override
  Widget build(BuildContext context) {
    InAppWebViewController _webViewController;
    ScreenParams.screenSize = MediaQuery.sizeOf(context);
    Size size = MediaQuery.of(context).size;
    List<Widget> list = [];

    final bodyHeight = size.height -
        AppBar().preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Penerjemah',
          style: bold.copyWith(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: InAppWebView(
          initialUrlRequest:
              URLRequest(url: Uri.parse("https://cam.isibi.web.id")),
          initialOptions: InAppWebViewGroupOptions(
            crossPlatform: InAppWebViewOptions(
              mediaPlaybackRequiresUserGesture: false,
              // debuggingEnabled: true,
            ),
          ),
          onWebViewCreated: (InAppWebViewController controller) {
            _webViewController = controller;
          },
          androidOnPermissionRequest: (InAppWebViewController controller,
              String origin, List<String> resources) async {
            return PermissionRequestResponse(
                resources: resources,
                action: PermissionRequestResponseAction.GRANT);
          }),

      // WebViewWidget(controller: translatorC.webViewController),

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
      ),
    );
  }
}
