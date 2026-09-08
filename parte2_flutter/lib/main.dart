import 'package:flutter/material.dart';
import 'screens/home_page.dart';

void main() {
  runApp(const DivideAi());
}

class DivideAi extends StatelessWidget {
  const DivideAi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}