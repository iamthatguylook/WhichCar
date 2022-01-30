import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 0, bottom: 50),
      child: Image.asset('assets/images/WhichCar.jpeg'),
      width: 250.0,
      height: 200.0,
    );
  }
}
