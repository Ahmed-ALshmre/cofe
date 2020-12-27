import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/parser.dart';

class LocelMap extends StatelessWidget {
  double sieh;
  double siew;
  LocelMap({this.siew, this.sieh});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: sieh * 0.06,
        width: siew * 0.78,
        decoration: BoxDecoration(
          color: Color(0xff9E8356),
          borderRadius: BorderRadius.circular(19),
        ),
        child: Row(
          children: [
            Container(
                padding: EdgeInsets.only(left: 50),
                child:SvgPicture.asset("assets/888.svg"
                ,
                ), ),
            SizedBox(
              width: 60,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                "أختر موقعك",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
