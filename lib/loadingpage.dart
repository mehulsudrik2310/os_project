import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:os_project/homepage.dart';

class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 7,
      backgroundColor: Colors.black,
      image: Image.asset('images/loading.gif'),
      loaderColor: Colors.white,
      photoSize: 150,
      navigateAfterSeconds: HomePage(),
    );
  }
}