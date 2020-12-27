import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_appds/tools/nav.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    displaySplash();
  }
  displaySplash() {
    Timer(Duration(seconds: 5), () async {
        Route route = MaterialPageRoute(builder: (_) => BottomNavigationBarExample());
        Navigator.pushReplacement(context, route);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset("assets/54.png"),
      ),
    );
  }
}
