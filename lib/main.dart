import 'package:flutter/material.dart';
import 'package:train/pages/landing_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Train Ticketing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        canvasColor: Colors.white,
        primarySwatch: Colors.blue,
        fontFamily: 'Oxygen',
      ),
      home: LandingPage(),
    );
  }
}
