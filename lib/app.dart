import 'package:flutter/material.dart';
import 'src/view/api_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: APIScreen(),
    );
  }
}
