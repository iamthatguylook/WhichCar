import 'package:flutter/material.dart';
import 'package:whichcar/pages/SignupPage.dart';
import 'assets/Logo.dart';
import 'pages/LoginPage.dart';
import 'pages/DetectPage.dart';
import 'pages/CameraPage.dart';
import 'dart:async';
import 'dart:io';

import 'package:camera/camera.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final firstCamera = cameras.first;
  runApp(MainPage(firstCamera));
}

class MainPage extends StatelessWidget {
  var firstCamera;
  MainPage(camera) {
    firstCamera = camera;
  }
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
          "/Camera": (context) => TakePictureScreen(
                camera: firstCamera,
              ),
        });
  }
}
