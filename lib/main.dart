import 'package:dispatcher_polus/navigation/navigation_controller.dart';
import 'package:dispatcher_polus/navigation/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) =>
          NavigationController().onGenerateRoute(settings),
      navigatorKey: NavigationController().key,
      initialRoute: Routes.orders,
      theme: ThemeData(
        fontFamily: 'Stem',
      ),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('ru', ''),
      ],
    );
  }
}
