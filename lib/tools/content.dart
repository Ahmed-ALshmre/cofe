import 'package:flutter/material.dart';

class Content extends StatelessWidget {
  double sh;
  double sw;
  String hi;
  Content(this.hi, this.sh, this.sw);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: sh,
      width: sw,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xff707070)),
          borderRadius: BorderRadius.circular(25)),
      child: Center(
        child: TextField(
          keyboardType: TextInputType.name,
          maxLines: 5,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            isDense: false,
            hintText: hi,
            hintStyle: TextStyle(
                color: Color(0xff9E8356).withOpacity(0.25),
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
