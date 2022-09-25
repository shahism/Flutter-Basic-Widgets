import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:interactive_app/InteractiveComponentsDart/Inkwell.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import 'ProfileScreen.dart';

class RaviApp extends StatelessWidget {
  const RaviApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red.shade400,
        title: const Text(
          "RaviBook ✨",
          style: TextStyle(fontFamily: "Combo", fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GestureDetector(
                onLongPress: () {
                  showAlert(
                      context: context,
                      title: "Hello Ravi",
                      detail: "let's Sign in to interact with fellow Ravians");
                },
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25.0),
                      child: Column(
                        children: const [
                          Text(
                            "Welcome,",
                            style: TextStyle(
                                fontFamily: "Combo",
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Text(
                            "Dear Ravi!",
                            style: TextStyle(
                                fontFamily: "Combo",
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 60.0),
                        child: SvgPicture.asset(
                          "Assets/illustration.svg",
                          height: 200,
                          width: 200,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 40.0),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Card(
                clipBehavior: Clip.antiAlias,
                child: TextField(
                  decoration: InputDecoration(hintText: "Username"),
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Card(
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(hintText: "Password"),
                ),
              ),
              const SizedBox(
                height: 70.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color :const Color.fromARGB(255, 235, 59, 59),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Profile(),
                          ),
                        );
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 50.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: const Color.fromARGB(255, 235, 59, 59), 
                    ),
                    child: TextButton(
                      onPressed: () {
                        showAlert(
                            context: context,
                            title: "New to RaviBook?",
                            detail:
                                "RaviBook is the official Alumi Portal for GCU!");
                      },
                      child: const Text(
                        "Help ?",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

Future<bool?> showAlert(
    {required BuildContext context,
    required String? title,
    required String? detail}) async {
  return await Alert(
    context: context,
    title: title,
    desc: detail,
    style: const AlertStyle(
        animationType: AnimationType.grow,
        backgroundColor: Color.fromARGB(255, 218, 231, 37),
        titleStyle: TextStyle(color: Colors.white),
        descStyle: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey)),
  ).show();
}
