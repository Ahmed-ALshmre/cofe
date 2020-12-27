
import 'package:flutter/material.dart';
import 'package:flutter_appds/model/appbarmode.dart';
import 'package:flutter_appds/tools/boutem.dart';
import 'package:flutter_appds/tools/conter.dart';
import 'package:flutter_appds/tools/recoerd.dart';

class Pay extends StatefulWidget {
  @override
  _PayState createState() => _PayState();
}

class _PayState extends State<Pay> {
  Tools _tools = Tools();
  bool val12 = false;
  bool val13 = false;
  bool val14=false;
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _tools.appB("الدفع"),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Recoerd(
            sieh: sh,
            siew: sw,
          ),
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Text(
                  "الدفع",
                  style: TextStyle(color: Color(0xff7E6E52), fontSize: 18),
                ),
                Container(
                  height: 1.5,
                  width: 50,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Esee(
            cofe: "قهوة عربي",
            tea: "شاهي",
            clase: "        ",
            titelBote: "عرض جديد",
            acceq: false,
          ),
          SizedBox(
            height: 20,
          ),
          price(sh, sw),
          SizedBox(
            height: 20,
          ),
          payMethode(sh, sw),
          SizedBox(
            height: 20,
          ),
          text(),
          ckckbox(),
          SizedBox(
            height: 20,
          ),
          Botumin((){}, "أنتهاء الطلب")
        ],
      ),
    );
  }

  ckckbox() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          children: [
            Text(
              "هل انت متاكد",
              style: TextStyle(
                color: Color(0xff643507),
                fontSize: 18,
              ),
            ),
            SizedBox(width: 10,),
            Checkbox(
              value: val14,
              onChanged: (va) {
                setState(() {
                  val14 = va;
                });
              },
            ),
          ],
        ),
      ],
    );
  }

  text() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text("في حال الموافقة على وانهاء الطلب يعتبر الطلب مقبول"),
        Text("من الطرفين وتم  استلام الخدمة وتسليم المبلغ"),
      ],
    );
  }

  payMethode(double sh, sw) {
    return Container(
      height: sh * 0.05,
      width: sw * 0.8,
      decoration: BoxDecoration(border: Border.all()),
      child: Center(
        child: Text("وسيلة الدفع المتاحة حاليا كاش",
            style: TextStyle(
              color: Color(0xff9E8356),
              fontSize: 15,
            )),
      ),
    );
  }

  price(double sh, sw) {
    return Container(
      height: sh * 0.15,
      width: sw * 0.9,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(27),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "SR",
                    style: TextStyle(
                      color: Color(0xff643507),
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Container(
                    width: sw * 0.2,
                    height: sh * 0.03,
                    decoration: BoxDecoration(border: Border.all()),
                    child: Center(
                      child: Text(
                        "150",
                        style: TextStyle(
                          color: Color(0xff643507),
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "سعر العرض",
                    style: TextStyle(
                      color: Color(0xff643507),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Text(
                    "التسليم المباشرة",
                    style: TextStyle(
                      color: Color(0xff643507),
                      fontSize: 15,
                    ),
                  ),
                  Checkbox(
                    value: val12,
                    onChanged: (va) {
                      setState(() {
                        val12 = va;
                      });
                    },
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "امكانية التوصيل",
                    style: TextStyle(
                      color: Color(0xff643507),
                      fontSize: 15,
                    ),
                  ),
                  Checkbox(
                    value: val13,
                    onChanged: (va) {
                      setState(() {
                        val13 = va;
                      });
                    },
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
