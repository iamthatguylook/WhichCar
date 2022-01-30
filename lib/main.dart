import 'package:flutter/material.dart';
import 'displayLogo.dart';

void main() {
  runApp(landingPage());
}

class landingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.black87,
          title: Container(
              width: double.infinity,
              child: Text(
                'Which Car',
                textAlign: TextAlign.center,
              )),
        ),
        body: Center(
          child: Column(
            children: <Widget>[logo(), Text('HEllo')],
          ),
        ),
      ),
    );
  }
}
