import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/HomeScreen.dart';
import 'package:sharedpreference/LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    print("init State for splash");
    super.initState();
    checkLoginSession();
  }

  void checkLoginSession() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.clear();
    print(sp.getBool("isLogin"));
    bool isLogin = sp.getBool('isLogin') ?? false;

    print("The value of isLogin is $isLogin");

    if (isLogin == true) {
      Timer(
        const Duration(seconds: 5),
        () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const MyWidget(),
            ),
          );
        },
      );
    } else {
      Timer(const Duration(seconds: 5), () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const LoginScreen()));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Image(
      height: double.infinity,
      fit: BoxFit.fitHeight,
      image: NetworkImage(
          "https://images.pexels.com/photos/13438765/pexels-photo-13438765.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
    );
  }
}
