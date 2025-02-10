import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_applications/model/newsverti.dart';

class Newsservice {
  final dio = Dio();
  Future<List<NewsVerticalModel>> getnews() async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=2dcc7dff90ab4c2691910cec1078cd41&category=general');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articless = jsonData['articles'];
      List<NewsVerticalModel> arti = [];
      for (dynamic article in articless) {
        NewsVerticalModel model = NewsVerticalModel(
          image: article['urlToImage'],
          title: article['title'],
          subTitle: article['description'],
        );
        arti.add(model);
      }
      return arti;
    }  catch (e) {
      return [];
    }
  }
}
