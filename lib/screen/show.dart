
import 'package:flutter/material.dart';
import 'package:flutter_appds/model/cart.dart';
import 'package:flutter_appds/tools/boutem.dart';
import 'package:flutter_appds/tools/content.dart';
import 'package:flutter_appds/tools/feldcall.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:flutter_appds/tools/textFeils.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Show extends StatefulWidget {
  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
  onPressed(){

  }
  OrderAdd orderAdd = OrderAdd();
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
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
              height: 20,
            ),
            Image.asset(
              "assets/54.png",
              height: sh * 0.2,
              fit: BoxFit.cover,
            ),
             SizedBox(
              height: 5,
            ),
            ratedFlu(),
             SizedBox(
              height: 5,
            ),
            TextCall("الاسم", sh * 0.08, sw * 0.9),
            SizedBox(
              height: 20,
            ),
            TextCall("البريد", sh * 0.08, sw * 0.9),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextFelidRecord(
                    hint: orderAdd.stret,
                    cool: Color(0xff9E8356).withOpacity(0.25)),
                TextFelidRecord(
                  hint: orderAdd.hin,
                  cool: Color(0xff9E8356).withOpacity(0.25),
                ),
              ],
            ),
            SizedBox(height: 10,),
          Text("يمكنك تغير رقم الجوال الاتصال بنا",style: TextStyle(fontSize: 15,color: Color(0xff643507).withOpacity(0.8)),),
            SizedBox(height: 10,),
            Content("051732738000", sh * 0.08, sw * 0.9),
            SizedBox(height: 20,),
            Botumin(onPressed, "تعديل"),
            SizedBox(height: 20,),
          ],
        ),
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

  ratedFlu() {
    return SmoothStarRating(
      rating: 5,
      isReadOnly: false,
      size: 30,
      filledIconData: Icons.star,
      halfFilledIconData: Icons.star_half,
      defaultIconData: Icons.star_border,
      starCount: 5,
      allowHalfRating: true,
      spacing: 2.0,
      color: Colors.black,
      borderColor: Color(0xff707070),
      onRated: (value) {
        print("rating value -> $value");
        // print("rating value dd -> ${value.truncate()}");
      },
    );
  }
}
