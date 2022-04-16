import 'package:catalog_app/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String username = "";
  bool clickedButton = false;

  final _formKey = GlobalKey<FormState>();

  onMove(BuildContext context) async {
    if(_formKey.currentState!.validate()){
      setState(() {
        clickedButton = true;
      });

      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(context, MyRoutes.homeRoute);

      setState(() {
        clickedButton = false;
      });
    }
    
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset(
            "Assets/Images/login.png",
            fit: BoxFit.cover,
            // height: 300.0,
          ),
          const SizedBox(
            height: 30.0,
          ),
          Text(
            "Welcome $username!",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.amberAccent[900],
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Username",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      username = value;
                      setState(
                          () {}); // by calling this the build function is directly called!
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty bro";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter Password",
                      labelText: "Password",
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Password de bhai!";
                      }
                      if (value!.length < 6) {
                        return "Password thora theek de bhai!";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () {
              onMove(context);
            },
            child: Material(
              borderRadius: BorderRadius.circular(clickedButton ? 10 : 20),
              color: Colors.deepPurple,
              child: AnimatedContainer(
                  alignment: Alignment.center,
                  duration: const Duration(seconds: 1),
                  height: 50.0,
                  width: clickedButton ? 100.0 : 150.0,
                  // this is conditional statement
                  child: clickedButton
                      ? const Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : const Text(
                          "Login",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                          ),
                        )),
            ),
          )
        ]),
      ),
    );
    // )
  }
}





//! Elevated button
 // ElevatedButton(
          //   onPressed: () {
          //     // print("Pakistan Noor hai aur noor ko zawal nhi!");
          //     Navigator.pushNamed(context, MyRoutes.homeRoute);
          //   },
          //   child: const Text("login"),
          // )