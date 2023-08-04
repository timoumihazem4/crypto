import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'constants.dart';
import 'article.dart';

class ApiService {
  Future<List<Article>?> getNews() async {
    debugPrint('response article aaaaaaaa');

    try {
      var url = Uri.parse(ApiConstants.baseUrl);
      var response = await http.get(url);
      if (response.statusCode == 200) {
        final data = jsonDecode(response.body);
        debugPrint('response article lenghth ${data}');

        List<Article> model = List<Article>.from(
            data['articles'].map((x) => Article.fromJson(x)));

        return model;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
    return null;
  }
}
