import 'package:flutter/material.dart';

class Tools {
   appB(String titel) {
   return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      leading: Image.asset(
        "assets/34.png",
        height: 28,
        width: 28,
        fit: BoxFit.cover,
      ),
      centerTitle: true,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            titel,
            style: TextStyle(color: Color(0xff643507), fontSize: 18),
            textAlign: TextAlign.center,
          ),
        ],
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: 50),
          child: Icon(
            Icons.arrow_forward_ios_outlined,
            color: Color(0xff707070),
          ),
        ),
        FlatButton(
          onPressed: () {
            print("Ckilck");
          },
          child: Container(
            height: 20,
            width: 35,
            child: Image.asset(
              "assets/m1.png",
              fit: BoxFit.fill,
              color: Color(0xff9F8259),
            ),
          ),
        ),
      ],
    );
  }
}
