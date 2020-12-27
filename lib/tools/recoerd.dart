import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Recoerd extends StatelessWidget {
  double sieh;
  double siew;
  Recoerd({this.sieh,this.siew});
  @override
  Widget build(BuildContext context) {
    return   Align(
      alignment: Alignment.center,
      child: Container(
        height: sieh * 0.06,
        width: siew * 0.96,
        decoration: BoxDecoration(
          color: Color(0xff643507),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Center(
          child: Text(
            "ما تكمل الطلعة الا بحلا",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}