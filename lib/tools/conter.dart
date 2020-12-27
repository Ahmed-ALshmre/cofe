
import 'package:flutter/material.dart';
import 'package:flutter_appds/model/fackshen.dart';

// ignore: must_be_immutable
class Esee extends StatefulWidget {
  String cofe;
  String tea;
  String clase;
  String titelBote;
  bool acceq;

  Esee({this.clase, this.cofe, this.tea, this.titelBote,this.acceq});

  @override
  _EseeState createState() => _EseeState();
}

class _EseeState extends State<Esee> {
  Fuvkshen _fuvkshen = Fuvkshen();
  bool vlue = false;
  bool vlue2 = false;

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Container(
      height: sh*0.15,
      width: sw*0.9,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff707070)),
        borderRadius: BorderRadius.circular(23),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(widget.clase),
                  SizedBox(
                    width: 20,
                    height: 40,
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Color(0xff707070),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(widget.tea),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    height: 30,
                    width: 2,
                    color: Color(0xff707070),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(widget.cofe),
                ],
              ),
            ],
          ),
          Container(
            height: 2,
            width: 330,
            color: Color(0xff707070),
          ),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, left: 10),
                child: InkWell(
                  onTap: () {
                    if( widget.acceq == true){
                      _fuvkshen.showBottom(context, vlue2, vlue);
                    }
                  },
                  child: Container(
                    height: sh*0.06,
                    width: sw*0.4,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff7E6E52),
                    ),
                    child: Center(
                        child: Text(
                      widget.titelBote,
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    )),
                  ),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "21/21/2021 17:00",
                    style: TextStyle(color: Color(0xff643507), fontSize: 14),
                  ),
                  Text(
                    "الرياض-حي المونسية",
                    style: TextStyle(
                        color: Color(0xff0D0701),
                        fontSize: 14,
                        letterSpacing: 2),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
