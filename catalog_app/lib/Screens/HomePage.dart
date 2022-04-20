import 'package:catalog_app/MyDrawer.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pakistan" ,
        style:  TextStyle(
          color: Colors.black,
          fontSize: 18.0
        ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Container(
        child: const Center(
          child: Text("Building Catalog App"),
        ),
      ),
      // One Drawer like slider for menu navigation
      drawer: MyDrawer(),
    );
  }
}
