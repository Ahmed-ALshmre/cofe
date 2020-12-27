
import 'package:flutter/material.dart';
import 'package:flutter_appds/tools/boutem.dart';
import 'package:flutter_appds/tools/content.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Asses extends StatefulWidget {
  @override
  _AssesState createState() => _AssesState();
}

class _AssesState extends State<Asses> {
  onPressed(){}
  var rating = 1.5;
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: appBarText(context),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,  
            ),
            Recoerd(
              sieh: sh,
              siew: sw,
            ),
            SizedBox(
              height: 40,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/54.png",
                height: 180,
                width: 180,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ratedFlu(),
            
        Text("أضف تقيمك تعاملك",style: TextStyle(color: Color(0xff643507),fontSize: 18),),
            SizedBox(
              height: 20,
            ),
            Content("يمكنك ذكر تجربتك بشكل موجز", sh * 0.25, sw * 0.9),
            SizedBox(
              height: 20,
            ),
            Botumin(onPressed, "تعديل"),
          SizedBox(
              height: 20,
            ),
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
            "التقيم",
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
      rating: rating,
      isReadOnly: false,
      size: 50,
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
