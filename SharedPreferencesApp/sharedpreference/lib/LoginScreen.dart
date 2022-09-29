import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/HomeScreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailTextController = TextEditingController();
  final ageTextController = TextEditingController();
  final passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: emailTextController,
            decoration: const InputDecoration(hintText: "Email"),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: passwordTextController,
            decoration: const InputDecoration(hintText: "Password"),
          ),
          const SizedBox(
            height: 20.0,
          ),
          TextFormField(
            controller: ageTextController,
            decoration: const InputDecoration(hintText: "Age"),
          ),
          const SizedBox(
            height: 20.0,
          ),
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.setString("email", emailTextController.text.toString());
              sp.setString("age", ageTextController.text.toString());
              sp.setString("password", passwordTextController.text.toString());
              sp.setBool("isLogin", true);

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyWidget(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Ink(
                color: Colors.orange,
                height: 60,
                width: double.infinity,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Login In"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
