import 'package:flutter/material.dart' ;

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
      drawer: Drawer(

      ),
    );
  }
}
