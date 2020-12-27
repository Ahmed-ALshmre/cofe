import 'package:flutter/material.dart';


class ScendBart extends StatelessWidget {
  String titel;
  ScendBart(this.titel);
  @override
  Widget build(BuildContext context) {
    double sieh=MediaQuery.of(context).size.height;
    double siew = MediaQuery.of(context).size.width;
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: sieh * 0.06,
        width: siew * 0.78,
        decoration: BoxDecoration(
          color: Color(0xff5F4B2A).withOpacity(0.8),
          borderRadius: BorderRadius.circular(19),
        ),
        child: 
            Align(
              alignment: Alignment.center,
              child: Text(
                 titel,
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
          
      ),
    );
  }
}