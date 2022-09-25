import 'package:flutter/material.dart';

//! Everything is a Widget
//? Stateless Widget -> A simple and static UI Component (cannot be rebuild)
//? Statefull Widget -> A dynamic widget that can change the state of itself
//* In general we used Stateless widgets for all the components neeeded
//* we use statefull only when we need to have some changes in the UI

void main() {
  runApp(const dynamicWidget());
}

class staticWidget extends StatelessWidget {
  const staticWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int number = 1;

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Let's Flutter✨ $number",
            style: const TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 500.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 240.0),
              child: FloatingActionButton(
                onPressed: () {
                  number++;
                  // print(number);
                },
                backgroundColor: Colors.amber,
                hoverColor: Colors.amber.shade300,
                child: const Icon(Icons.add_ic_call_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class dynamicWidget extends StatefulWidget {
  const dynamicWidget({Key? key}) : super(key: key);

  @override
  State<dynamicWidget> createState() => _dynamicWidgetState();
}

class _dynamicWidgetState extends State<dynamicWidget> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            "Let's Flutter✨ $number",
            style: const TextStyle(color: Colors.yellow),
          ),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 500.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 240.0),
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                backgroundColor: Colors.amber,
                hoverColor: Colors.amber.shade300,
                child: const Icon(Icons.add_ic_call_sharp),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
