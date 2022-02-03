import 'package:flutter/material.dart';
import 'assets/Logo.dart';
import 'pages/LoginPage.dart';

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
        initialRoute: "/home",
        routes: {
          "/home": (context) => LoginPage(),
        });
  }
}
