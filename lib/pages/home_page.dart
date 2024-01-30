import 'package:flutter/material.dart' ;
import 'package:my_flutter_test_pro/widgets/drawar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Sagar"),
      ),
      body: Center(
        child: Container(
          child: const Text("Hello sagar"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
