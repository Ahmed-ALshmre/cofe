
import 'package:flutter/material.dart';
import 'package:flutter_appds/tools/boutem.dart';
import 'package:flutter_appds/tools/content.dart';
import 'package:flutter_appds/tools/feldcall.dart';
import 'package:flutter_appds/tools/recoerd.dart';

import 'homescreen.dart';

class Call extends StatefulWidget {
  @override
  _CallState createState() => _CallState();
}

class _CallState extends State<Call> {
  onpres(){
    Navigator.of(context).push(MaterialPageRoute(builder: (_)=>HomeScreen()));
  }
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: appBarText(context),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Recoerd(
                sieh: sh,
                siew: sw,
              ),
              SizedBox(
                height: 7.0,
              ),
              textRow(
                "admin@admin",
                "يمكنك التواصل معنا مباشرة",
              ),
              SizedBox(
                height: 7.0,
              ),
              textRow("022255555", "عبر البريد او الوتساب"),
              SizedBox(
                height: 20,
              ),
              TextCall("الاسم", sh * 0.08, sw * 0.9),
              SizedBox(
                height: 20,
              ),
              TextCall("البريد", sh * 0.08, sw * 0.9),
              SizedBox(
                height: 20,
              ),
              TextCall("النوع", sh * 0.08, sw * 0.9),
              SizedBox(
                height: 20,
              ),
              Content("المحتوة", sh * 0.2, sw * 0.9),
              SizedBox(
                height: 20,
              ),
              Botumin(
                onpres,
                "ارسال"
              )
            ],
          ),
        ),
      ),
    );
  }

  textRow(String email, String titel) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          email,
          style: TextStyle(color: Color(0xff643507), fontSize: 15),
        ),
        Text(
          titel,
          style: TextStyle(color: Color(0xff643507), fontSize: 15),
        ),
      ],
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
            "اتصل بنا ",
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
