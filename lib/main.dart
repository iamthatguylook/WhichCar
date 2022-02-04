import 'package:flutter/material.dart';
import 'package:whichcar/pages/SignupPage.dart';
import 'assets/Logo.dart';
import 'pages/LoginPage.dart';
import 'pages/DetectPage.dart';

void main() {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  //StatelessWidget for landing page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.light,
        initialRoute: "/Home",
        routes: {
          "/Home": (context) => LoginPage(),
          "/Detect": (context) => DetectPage(),
          "/SignUp": (context) => SignupPage(),
        });
  }
}
