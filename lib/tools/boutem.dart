 import 'package:flutter/material.dart';


// ignore: must_be_immutable
class Botumin extends StatelessWidget {
  final String massege;
  Function onPressed;
  Botumin(this.onPressed,this.massege);
   @override
   Widget build(BuildContext context) {
     return FlatButton(
        onPressed: onPressed,
        child: Container(
          height: 70,
          width: 400,
          decoration: BoxDecoration(
              color: Color(0xff643507),
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              massege,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ));
  }
 }
    