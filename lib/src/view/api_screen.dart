import 'package:api_test/src/model/news_model.dart';
import 'package:api_test/src/view_model/repository/news_repository.dart';
import 'package:flutter/material.dart';

class APIScreen extends StatefulWidget {
  const APIScreen({super.key});

  @override
  State<APIScreen> createState() => _APIScreenState();
}

class _APIScreenState extends State<APIScreen> {
  List<NewsModel> newsModel = [];

  @override
  void initState() {
    getNews();
    super.initState();
  }

  getNews() {
    NewsRepository.getNews().then((value) {
      newsModel = value;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (newsModel.isEmpty)
            ? const CircularProgressIndicator()
            : ListView.builder(
                itemCount: newsModel.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(newsModel[index].title),
                    subtitle: Text(newsModel[index].body),
                  );
                }),
      ),
    );
  }
}
