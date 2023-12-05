import 'package:api_test/src/view_model/repository/news_repository.dart';
import 'package:flutter/material.dart';

class APIScreen extends StatelessWidget {
  const APIScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("data"),
            ElevatedButton(
                onPressed: () {
                  NewsRepository.getNews();
                },
                child: Text("Fetch Data"))
          ],
        ),
      ),
    );
  }
}
