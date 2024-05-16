import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ListVideoController extends GetxController {
  var category;

  var data = [].obs;

  final count = 0.obs;
  @override
  void onInit() {
    category = Get.arguments;
    if (category == "abjad") {
      fetchVideoAbjad();
    } else if (category == "angka") {
      fetchVideoAngka();
    } else if (category == "kata") {
      fetchVideoKata();
    } else if (category == "perkenalan") {
      fetchVideoPerkenalan();
    } else if (category == "salam") {
      fetchVideoSalam();
    }
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  Future _fetchNews() async {
    Uri url = Uri.parse("https://isibi.web.id/api/posts");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final ready = json.decode(response.body)['data'];

      // print(ready);
      data.addAll(ready);
      print(data);
    } else {
      throw Exception('Failed to load news');
    }

    // news.assignAll(data.map((item) => DetailNews.fromJson(item)).toList());
  }

  Future fetchVideoKata() async {
    Uri url = Uri.parse("https://api.isibi.web.id/kata");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final ready = json.decode(response.body)['data'];

      // print(ready);
      data.addAll(ready);
      // urlVideo.add(ready['kamus_url']);
      print(data);

      // print(ready['kamus_url']);
    } else {
      throw Exception('Failed to load news');
    }

    // news.assignAll(data.map((item) => DetailNews.fromJson(item)).toList());
  }

  Future fetchVideoAngka() async {
    Uri url = Uri.parse("https://api.isibi.web.id/angka");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final ready = json.decode(response.body)['data'];

      // print(ready);
      data.addAll(ready);
      print(data);
    } else {
      throw Exception('Failed to load news');
    }

    // news.assignAll(data.map((item) => DetailNews.fromJson(item)).toList());
  }

  Future fetchVideoAbjad() async {
    Uri url = Uri.parse("https://api.isibi.web.id/abjad");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final ready = json.decode(response.body)['data'];

      // print(ready);
      data.addAll(ready);

      print(data);
    } else {
      throw Exception('Failed to load news');
    }

    // news.assignAll(data.map((item) => DetailNews.fromJson(item)).toList());
  }

  Future fetchVideoPerkenalan() async {
    Uri url = Uri.parse("https://api.isibi.web.id/intro/perkenalan");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final ready = json.decode(response.body)['data'];

      // print(ready);
      data.addAll(ready);
      print(data);
    } else {
      throw Exception('Failed to load news');
    }

    // news.assignAll(data.map((item) => DetailNews.fromJson(item)).toList());
  }

  Future fetchVideoSalam() async {
    Uri url = Uri.parse("https://api.isibi.web.id/intro/salam");

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final ready = json.decode(response.body)['data'];

      // print(ready);
      data.addAll(ready);
      print(data);
    } else {
      throw Exception('Failed to load news');
    }

    // news.assignAll(data.map((item) => DetailNews.fromJson(item)).toList());
  }
}
