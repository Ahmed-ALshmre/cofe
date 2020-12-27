import 'package:flutter/material.dart';

class TextTime extends StatelessWidget {
  String hint;
  String hi;
  TextTime(this.hint, this.hi);
  @override
  Widget build(BuildContext context) {
    double sh =MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return  Container(
      height: sh*0.07,
      width: sw*0.88,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff9E8356)),
          borderRadius: BorderRadius.circular(17)),
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            suffixIcon: Padding(
              padding: const EdgeInsets.only(right: 10, top: 7),
              child: Text(
                hint,
                style: TextStyle(fontSize: 16, color: Color(0xff643507)),
              ),
            ),
            hintText: hi,
            hintStyle: TextStyle(
                color: Color(0xff9E8356),
                fontWeight: FontWeight.bold,
                fontSize: 20),
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(10),
          ),
        ),
      ),
    );
  
  }
}