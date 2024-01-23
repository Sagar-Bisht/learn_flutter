import 'package:flutter/material.dart';
import 'package:my_flutter_test_pro/pages/home_page.dart';
import 'package:my_flutter_test_pro/pages/login_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
        theme:ThemeData(),
        themeMode: ThemeMode.light,
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute: "/login",
      routes: {
          "/":(context)=> LoginPage() ,
        "/login":(context) => LoginPage(),
        "/home":(context) => HomePage()
      },
    );
  }
}

void main() {
  runApp(MyApp());
}