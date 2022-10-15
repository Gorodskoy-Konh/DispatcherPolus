import 'package:dispatcher_polus/navigation/navigation_controller.dart';
import 'package:dispatcher_polus/navigation/routes.dart';
import 'package:dispatcher_polus/screens/orders.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) =>
          NavigationController().onGenerateRoute(settings),
      navigatorKey: NavigationController().key,
      initialRoute: Routes.transports,
      theme: ThemeData(
        fontFamily: 'Stem',
      ),
      home: const Orders(),
    );
  }
}
