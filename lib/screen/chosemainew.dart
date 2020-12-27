import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_appds/tools/conter.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:flutter_appds/tools/scrndshose.dart';

class ChoesMnuw extends StatefulWidget {
  @override
  _ChoesMnuwState createState() => _ChoesMnuwState();
}

class _ChoesMnuwState extends State<ChoesMnuw> {
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarText(context),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Recoerd(
            siew: sw,
            sieh: sh,
          ),
          SizedBox(
            height: 20,
          ),
          ScendBart("اختر القسك"),
          SizedBox(
            height: 20,
          ),
          Esee(
            cofe: "قهوة عربي",
            tea: "شاهي",
            clase: "فناجيل",
            titelBote: "أضف عرضك",
            acceq: true,
          ),
          SizedBox(
            height: 20,
          ),
          Esee(
            cofe: "قهوة عربي",
            tea: "",
            clase: "فناجيل",
            titelBote: "أضف عرضك",
             acceq: true,
          ),
          SizedBox(
            height: 20,
          ),
          Esee(
            cofe: "قهوة عربي",
            tea: "شاهي",
            clase: "فناجيل",
            titelBote: "أضف عرضك",
             acceq: true,
          ),
        ],
      ),
    );
  }

  Widget appBarText(co) {
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
            "العروض",
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
