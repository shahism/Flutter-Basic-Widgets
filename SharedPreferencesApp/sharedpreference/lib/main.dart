import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/LoginScreen.dart';
import 'package:sharedpreference/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SplashScreen()
      ),
    );
  }
}
















  //! Shared Preferences stores data in the encrypted form

// onTap: () async {
//                 SharedPreferences sp = await SharedPreferences.getInstance();

//                 sp.setInt('reg_no', 87);
//                 sp.setString('Name', "Shahzaneer Ahmed");
//                 sp.setBool("isLogin", true);

//                 print(sp.getInt("reg_no"));
//                 print(sp.getString("Name"));
//                 sp.remove("Name");
//                 print(sp.getString("Name"));
//                 print(sp.getKeys());
//               }