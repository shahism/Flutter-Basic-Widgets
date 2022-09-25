import "package:flutter/material.dart";
import 'package:navigateroute_app/Routing/Utils/RouteNames.dart';

// ignore: must_be_immutable
class ScreenTwo extends StatefulWidget {
  // Here too we can take data as Map

  // dynamic data;
  Map data;
  ScreenTwo({Key? key, required this.data}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data["Name"].toString()),
        backgroundColor: Colors.yellow.shade300,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, RouteNames.screenThree);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Container(
                width: double.infinity,
                height: 50.0,
                color: const Color.fromARGB(255, 19, 40, 221),
                child: Text("Screen Two ${widget.data['School']}"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
