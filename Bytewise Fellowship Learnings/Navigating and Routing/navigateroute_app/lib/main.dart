import 'package:flutter/material.dart';
import 'package:navigateroute_app/Routing/Utils/RouteNames.dart';
import 'Routing/Screen1.dart';
import 'Routing/Utils/Routes.dart';
import 'SimplePushandPop/Screen1.dart';

void main() {
  runApp(const RoutingApp());
}

class RoutingApp extends StatelessWidget {
  const RoutingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      initialRoute: RouteNames.screenOne,
      onGenerateRoute: Routes.generateRoutes,
    );
  }
}
