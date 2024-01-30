import 'package:flutter/material.dart';
import 'package:my_flutter_test_pro/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";

  bool isClicked = false;

  final _formKey = GlobalKey<FormState>();

  moveToHome(BuildContext context) async {
    if (_formKey.currentState?.validate() ?? false) {
      setState(() {
        isClicked = true;
      });
      await Future.delayed(Duration(seconds: 1));
      Navigator.pushNamed(context, MyRoutes.homeRoutes);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.blue,
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
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
                Text(
                  "Welcome $name",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 16.0, horizontal: 32),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            hintText: "Enter Your Name",
                            labelText: "Name") ,
                        validator: (value) {
                          if(value?.isEmpty ?? true){
                            return "user anme can not be empty";
                          }
                          return null ;
                        },
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
                        validator: (value) {
                          if(value?.isEmpty ?? true ){
                            return "password can not be empty";
                          }
                          return null ;
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Material(
                  color: Colors.white,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(50),
                  child: InkWell(
                      onTap: () => moveToHome(context),
                      child: AnimatedContainer(
                        duration: Duration(seconds: 1),
                        width: 120,
                        height: 40,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                              color: Colors.deepPurple,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                        /*decoration: BoxDecoration(
                        shape: isClicked ? BoxShape.circle : BoxShape.rectangle,
                        color: isClicked ? Colors.green : Colors.white
                      )*/
                      )),
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
          ),
        ));
  }
}
