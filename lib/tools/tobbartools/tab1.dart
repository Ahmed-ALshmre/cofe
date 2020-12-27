import 'package:flutter/material.dart';

class Tap1 extends StatefulWidget {
  @override
  _Tap1State createState() => _Tap1State();
}

class _Tap1State extends State<Tap1> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "لايوجد طلبات",
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
