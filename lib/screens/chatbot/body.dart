import 'package:flutter/material.dart';
import 'chatscreen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      debugShowCheckedModeBanner: false,
      home: ChatScreen(),
    );
  }
}