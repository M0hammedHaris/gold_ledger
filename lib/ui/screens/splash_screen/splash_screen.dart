import 'package:flutter/material.dart';
import 'package:gold_ledger/data/common/color_contatant.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
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
