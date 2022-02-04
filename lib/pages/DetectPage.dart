import 'package:flutter/material.dart';
import '../assets/Logo.dart';

import '../assets/AppBar.dart';

class DetectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: CustomAppBar("WhichCar"),
        body:
            //Importing logo object to add logo to the page
            Center(
          child: ElevatedButton(
            child: const Text(
              'Camera',
              style: TextStyle(fontSize: 24),
            ),
            style: ElevatedButton.styleFrom(
                fixedSize: const Size(200, 200),
                shadowColor: Colors.red,
                shape: const CircleBorder(),
                splashFactory: InkRipple.splashFactory,
                onPrimary: Colors.white,
                primary: Colors.black),
            onPressed: () {},
            onLongPress: () {
              print('how are you');
            },
          ),
        ),
      ),
    );
  }
}
