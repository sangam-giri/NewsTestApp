import 'dart:convert';
import 'package:api_test/src/model/news_model.dart';
import 'package:http/http.dart' as http;

var client = http.Client();
String newsApi = "https://jsonplaceholder.typicode.com/posts";

//http
class NewsRepository {
  static Future<List<NewsModel>> getNews() async {
    var response = await client.get(Uri.parse(newsApi));
    List<dynamic> list = jsonDecode(response.body);
    List<NewsModel> newsModel = list.map((e) => NewsModel.fromJson(e)).toList();
    return newsModel;
  }
}
