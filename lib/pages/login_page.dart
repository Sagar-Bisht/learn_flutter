import 'package:flutter/material.dart';
import 'package:my_flutter_test_pro/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "" ;
  bool isClicked = false ;
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50.0,
              ),
              Image.asset("assets/images/image.png",
                  fit: BoxFit.cover, height: 300),
              const SizedBox(
                height: 20.0,
              ),
               Text( "Welcome $name",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: const InputDecoration(
                          hintText: "Enter Your Name", labelText: "Name"),
                      onChanged: (value) {
                        name = value;
                        setState(() {
                          build(context);
                        });
                      },
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: "Enter Your Password",
                        labelText: "Password",
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),

              InkWell(
                onTap: () async {
                  setState((){
                    isClicked = true ;
                  });
                  await Future.delayed(Duration(seconds:  1)) ;
                  Navigator.pushNamed(context, MyRoutes.homeRoutes);
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  width: 120,
                  height: 40,
                  alignment: Alignment.center,
                    child: isClicked ? Icon(Icons.done) : Text("Login" ,
                    style: TextStyle(
                    color: Colors.deepPurple ,
                      fontSize: 16 ,
                      fontWeight: FontWeight.bold
                  ),
                  ),
                  decoration: BoxDecoration(
                    shape: isClicked ? BoxShape.circle : BoxShape.rectangle,
                    color: isClicked ? Colors.green : Colors.white
                  )
                )
                ),
              /*ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, MyRoutes.homeRoutes);
                },
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.black),
                    backgroundColor: MaterialStatePropertyAll(Colors.white),
                    minimumSize: MaterialStatePropertyAll(Size(100, 40))),
                child: const Text("Login"),
              )*/
            ],
          ),
        ));
  }
}
