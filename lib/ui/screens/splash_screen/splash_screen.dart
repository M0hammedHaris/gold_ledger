import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0a112e),
      body: Center(
        child: Container(
          child: Image(
            image: AssetImage("assets/images/vishaga_gold.jpg"),
          ),
        ),
      ),
    );
  }
}
