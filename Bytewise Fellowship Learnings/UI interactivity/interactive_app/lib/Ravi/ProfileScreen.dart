import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Padding(
                  padding: EdgeInsets.only(right: 150),
                  child: Text(
                    "Welcome!",
                    style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  "Shahzaneer Ahmed",
                  style: TextStyle(
                    fontSize: 39.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Combo"
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
