import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sharedpreference/LoginScreen.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  var email = '';
  var age = '';
  var password = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  void loadData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    email = sp.getString("email") ?? "";
    age = sp.getString("age") ?? "";
    password = sp.getString("password") ?? "";
    setState(() {
      
    });
    print("email is $email password is $password and age is $age");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            email,
            style: const TextStyle(fontSize: 25, color: Colors.brown)
          ),
          Text(
            age,
            style: const TextStyle(fontSize: 25, color: Colors.brown),
          ),
          InkWell(
            onTap: () async {
              SharedPreferences sp = await SharedPreferences.getInstance();
              sp.clear();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Ink(
                color: Colors.orange,
                height: 60,
                width: double.infinity,
                child: const Align(
                  alignment: Alignment.center,
                  child: Text("Log Out"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
