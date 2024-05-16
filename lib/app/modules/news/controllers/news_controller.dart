import 'dart:convert';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class NewsController extends GetxController {
  // RxString searchValue = "".obs;
  var data = [].obs;
  // var news = [].obs;

  @override
  void onInit() {
    super.onInit();
    _fetchNews();
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
}
