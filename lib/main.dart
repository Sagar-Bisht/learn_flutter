import 'package:flutter/material.dart';
import 'package:my_flutter_test_pro/pages/home_page.dart';
import 'package:my_flutter_test_pro/pages/login_page.dart';
import 'package:my_flutter_test_pro/utils/routes.dart';

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
      initialRoute: "/",
      routes: {
          "/":(context)=> const LoginPage() ,
        MyRoutes.loginRoutes :(context) => const LoginPage(),
        MyRoutes.homeRoutes:(context) => const HomePage()
      },
    );
  }
}

void main() {
  runApp(const MyApp());
}