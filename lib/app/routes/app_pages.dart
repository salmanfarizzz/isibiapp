import 'package:get/get.dart';
// import 'package:isibi/app/widgets/home_view.dart';

import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/introduction/bindings/introduction_binding.dart';
import '../modules/introduction/views/introduction_view.dart';
import '../modules/learn/bindings/learn_binding.dart';
import '../modules/learn/views/learn_view.dart';
import '../modules/list_video/bindings/list_video_binding.dart';
import '../modules/list_video/views/list_video_view.dart';
import '../modules/news/bindings/news_binding.dart';
import '../modules/news/views/news_view.dart';
import '../modules/splash_screen/bindings/splash_screen_binding.dart';
import '../modules/splash_screen/views/splash_screen_view.dart';
import '../modules/translator/bindings/translator_binding.dart';
import '../modules/translator/views/translator_view.dart';
import '../modules/video/bindings/video_binding.dart';
import '../modules/video/views/video_view.dart';
import '../widgets/detector_view.dart';
import '../widgets/detector_widget.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => SplashScreenView(),
      binding: SplashScreenBinding(),
    ),
    GetPage(
      name: _Paths.INTRODUCTION,
      page: () => IntroductionView(),
      binding: IntroductionBinding(),
    ),
    GetPage(
      name: _Paths.TRANSLATOR,
      // page: () => DetectorView(),
      page: () => TranslatorView(),
      binding: TranslatorBinding(),
    ),
    GetPage(
      name: _Paths.NEWS,
      page: () => NewsView(),
      binding: NewsBinding(),
    ),
    GetPage(
      name: _Paths.VIDEO,
      page: () => VideoView(),
      binding: VideoBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: _Paths.LEARN,
      page: () => LearnView(),
      binding: LearnBinding(),
    ),
    GetPage(
      name: _Paths.LIST_VIDEO,
      page: () => ListVideoView(),
      binding: ListVideoBinding(),
    ),
  ];
}
