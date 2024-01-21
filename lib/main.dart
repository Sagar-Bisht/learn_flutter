import 'package:flutter/material.dart';
import 'package:my_flutter_test_pro/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        home: HomePage());
  }
}

void main() {
  runApp(MyApp());
}