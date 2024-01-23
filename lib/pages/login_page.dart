import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: Column(
          children: [
            SizedBox(
              height: 50.0,
            ),
            Image.asset("assets/images/image.png",
                fit: BoxFit.scaleDown, width: 500, height: 300),
            SizedBox(
              height: 20.0,
            ),
            const Text(
              "Welcome Sir",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Name", labelText: "Name"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Enter Your Password",
                      labelText: "Password",
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                print("Hello sagar");
              },
              child: Text("Login"),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black) ,
                backgroundColor: MaterialStatePropertyAll(Colors.white)
              ),
            )
          ],
        ));
  }
}
