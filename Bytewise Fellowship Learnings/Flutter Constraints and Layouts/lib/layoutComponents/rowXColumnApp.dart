import 'package:flutter/material.dart';

class rowXColumnApp extends StatelessWidget {
  const rowXColumnApp({Key? key}) : super(key: key);

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
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage("images/shahzaneer.jpg"),
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
                  width: 170.0,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 60.0,
                  width: 400.0,
                  color: Colors.white,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SizedBox(
                        width: 20.0,
                      ),
                      Icon(
                        Icons.phone,
                        color: Colors.teal,
                        size: 40.0,
                      ),
                      SizedBox(
                        width: 70.0,
                      ),
                      Text(
                        "+92 316 4606490",
                        style: TextStyle(color: Colors.teal, fontSize: 20.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  height: 60.0,
                  width: 400.0,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(
                        Icons.email,
                        color: Colors.teal,
                        size: 40.0,
                      ),
                      SizedBox(
                        width: 40.0,
                      ),
                      Text(
                        "shahzaneer.dev@gmail.com",
                        style: TextStyle(color: Colors.teal, fontSize: 20.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
