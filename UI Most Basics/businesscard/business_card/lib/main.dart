import 'package:flutter/material.dart';


void main() {
  runApp(const BusinessCard());
}

class BusinessCard extends StatelessWidget {
  const BusinessCard({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 32, 231, 201),
            title: const Text(
              "Contact Info",
              style: TextStyle(fontFamily: "lobster", fontSize: 25.0),
            ),
            centerTitle: true,
          ),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 120.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("Assets/shahzaneer.jpg"),
                  radius: 70.0,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                const Text(
                  "Shahzaneer Ahmed",
                  style: TextStyle(
                    fontSize: 35.0,
                    fontFamily: "lobster",
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Flutter Developer",
                  style: TextStyle(
                      color: Colors.teal.shade200,
                      fontFamily: "opensans",
                      fontSize: 20.0),
                ),
                SizedBox(
                  width: 140.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                const Card(
                  child: ListTile(
                    minLeadingWidth: 80,
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                      size: 40.0,
                    ),
                    textColor: Colors.teal,
                    title: Text(
                      "+92 316 4606490",
                      style: TextStyle(fontFamily: "opensans", fontSize: 20.0),
                    ),
                  ),
                ),
                const Card(
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                      size: 40.0,
                    ),
                    textColor: Colors.teal,
                    title: Text(
                      "shahzaneer.dev@gmail.com",
                      style: TextStyle(fontFamily: "opensans", fontSize: 20.0),
                    ),
                  ),
                ),
                // const Icon(
                //   Icons.ac_unit_rounded,
                //   color: Colors.black,
                // ),
              ],
            ),
          )),
    );
  }
}
