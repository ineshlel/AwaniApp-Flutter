import 'package:flutter/material.dart';
import './src/Pages/LoginSign/welcomePage.dart';
void main() => runApp(
    MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel',
      theme: ThemeData(
        primaryColor: Colors.orangeAccent
      ),
      home: WelcomePage()
    );
  }
}
