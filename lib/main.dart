import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

 /* @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Text("Hello, Sagar"),
          ),
        ),
      ),
    );
  }*/

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Center(
          child: Container(
              child: Text("Hello, Sagar"),
            ),
        ),
        );
  }
}

void main() {
  runApp(MyApp());
}