import 'package:flutter/material.dart';
import 'displayLogo.dart';
import 'loginForm.dart';
import 'customAppbar.dart';

void main() {
  runApp(landingPage());
}

class landingPage extends StatelessWidget {
  var dynamicAppBar = new appBar("Login");

  //StatelessWidget for landing page
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: dynamicAppBar,
        body: Center(
          child: Column(children: <Widget>[
            Expanded(
              child: ListView(children: [logo(), loginForm()]),
            ),
          ]),
        ),
      ),
    );
  }
}
