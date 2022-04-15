import 'package:catalog_app/Utils/myRoutes.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return SingleChildScrollView(
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
            "Welcome to RaviCom",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w900,
              color: Colors.amberAccent[900],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Username",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ElevatedButton(
            onPressed: () {
              // print("Pakistan Noor hai aur noor ko zawal nhi!");
              Navigator.pushNamed(context, MyRoutes.homeRoute);
            },
            child: const Text("login"),
          )
        ]),
      ),
    );
    // )
  }
}
