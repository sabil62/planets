import 'package:flutter/material.dart';
import 'package:planet/homepage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Plannet App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
