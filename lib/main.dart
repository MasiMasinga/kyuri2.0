import 'package:flutter/material.dart';
import 'package:kyuri/constants.dart';
import 'package:kyuri/routes.dart';
import 'package:kyuri/screens/splash/splash_screen.dart';
import 'package:kyuri/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kyuri',
      theme: theme(),
      //home: SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
