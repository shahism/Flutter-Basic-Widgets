import 'package:flutter/material.dart';
import 'package:navigateroute_app/Routing/Utils/RouteNames.dart';
import 'package:navigateroute_app/Routing/Screen1.dart';
import 'package:navigateroute_app/Routing/Screen2.dart';
import 'package:navigateroute_app/Routing/Screen3.dart';

class Routes {
  // Static -> class level access
  //  Routes -> return TYPE
  // RouteSettings -> contains specific info about the available routes

// Dynamic ki jageh -> MaterialPageRoute bhi likh skte 

  static Route<dynamic> generateRoutes(RouteSettings settings) {
    switch (settings.name) {
      case RouteNames.screenOne:
        return MaterialPageRoute(builder: (context) => const ScreenOne());
      case RouteNames.screenTwo:
        return MaterialPageRoute(builder: (context) => ScreenTwo(data: settings.arguments as Map,));
      case RouteNames.screenThree:
        return MaterialPageRoute(builder: (context) => const ScreenThree());
      default:
        return MaterialPageRoute(
          builder: (context) {
            return const MaterialApp(
              home: Scaffold(
                body: Center(
                  child: Text("No Route defined"),
                ),
              ),
            );
          },
        );
    }
  }
}
