import 'package:flutter/material.dart';
class TextFelidRecord extends StatelessWidget {
  String hint;
  Color cool;
  TextFelidRecord({this.hint ,this.cool});
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw =MediaQuery.of(context).size.width;
    return Container(
      height: sh*0.07,
      width: sw*0.4,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff9E8356)),
          borderRadius: BorderRadius.circular(17)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: TextStyle(
                color: cool,
                fontWeight: FontWeight.bold,
                fontSize: 20),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
  }
