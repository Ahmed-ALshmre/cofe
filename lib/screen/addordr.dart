import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_appds/model/cart.dart';
import 'package:flutter_appds/screen/show.dart';
import 'package:flutter_appds/tools/boutem.dart';
import 'package:flutter_appds/tools/locelMap.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:flutter_appds/tools/textFeils.dart';
import 'package:flutter_appds/tools/textfeltime.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';

import 'chosemainew.dart';
import 'orded2.dart';

class AddOrder extends StatefulWidget {
  @override
  _AddOrderState createState() => _AddOrderState();
}

class _AddOrderState extends State<AddOrder> {
  bool value = false;
  int cofeArbek = 0;
  int shahe = 0;
  int pass = 0;
  int belat = 0;
  int cla = 0;
  numberVoid() {
    setState(() {
      cofeArbek++;
      print(cofeArbek);
    });
  }

  numberVoid2() {
    setState(() {
      shahe++;
      print(shahe);
    });
  }

  numberVoid3() {
    setState(() {
      pass++;
      print(pass);
    });
  }

  numberVoid4() {
    setState(() {
      belat++;
      print(belat);
    });
  }

  numberVoid5() {
    setState(() {
      cla++;
      print(cla);
    });
  }

  numberVoid1() {
    if (cofeArbek >= 1) {
      setState(() {
        cofeArbek--;
        print(cofeArbek);
      });
    }
  }

  numberVoid12() {
    if (shahe >= 1) {
      setState(() {
        shahe--;
        print(shahe);
      });
    }
  }

  numberVoid13() {
    if (pass >= 1) {
      setState(() {
        pass--;
        print(pass);
      });
    }
  }

  numberVoid14() {
    if (belat >= 1) {
      setState(() {
        belat--;
        print(belat);
      });
    }
  }

  numberVoid15() {
    if (cla >= 1) {
      setState(() {
        cla--;
        print(cla);
      });
    }
  }

  OrderAdd orderAdd = OrderAdd();
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double dw = MediaQuery.of(context).size.width;
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
                siew: dw,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "يمكنك تحديد موقعك عبر الخريطة ",
                          style: TextStyle(
                              color: Color(0xff643507).withOpacity(0.5)),
                        ),
                        Text(
                          "او أختر المدينة والحي",
                          style: TextStyle(
                              color: Color(0xff643507).withOpacity(0.5)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              LocelMap(sieh: sh, siew: dw),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextFelidRecord(
                    hint: orderAdd.stret,
                    cool: Color(0xff9E8356),
                  ),
                  TextFelidRecord(
                    hint: orderAdd.hin,
                    cool: Color(0xff9E8356),
                  ),
                ],
              ),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 30, top: 10, bottom: 10),
                child: Text(
                  "حدد التاريخ و الوقت",
                  style: TextStyle(
                      color: Color(0xff643507),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              TextTime(": الوقت والتاريخ", "21/12/2021  12:00"),
              Container(
                alignment: Alignment.centerRight,
                padding: EdgeInsets.only(right: 30, top: 10, bottom: 10),
                child: Text(
                  "تفاصيل الطلب",
                  style: TextStyle(
                      color: Color(0xff643507),
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              containerCenter(sh, dw, orderAdd),
              CheckboxListTile(
                title: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "الموفقة على استخدام الطلبات",
                    style: TextStyle(
                      color: Color(0xff643507),
                    ),
                  ),
                ),
                value: value,
                onChanged: (vale) {
                  setState(() {
                    value = vale;
                  });
                },
              ),
              Botumin(() {
                Route route = MaterialPageRoute(builder: (_) => ChoesMnuw());
                Navigator.push(context, route);
              }, "ارسال الطلب"),
              SizedBox(
                height: 10,
              ),
            ],
          ),
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
            "اضافة طلب",
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

  Widget containerCenter(double sh, double dw, OrderAdd orderAdd) {
    return Container(
      height: sh * 0.65,
      width: dw * 0.88,
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          RowCart(orderAdd.titel1, cofeArbek, numberVoid, numberVoid1),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2,
              width: dw * 0.75,
              color: Color(0xff707070),
            ),
          ),
          RowCart(orderAdd.titel2, shahe, numberVoid2, numberVoid12),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2,
              width: dw * 0.75,
              color: Color(0xff707070),
            ),
          ),
          RowCart(orderAdd.titel3, pass, numberVoid3, numberVoid13),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2,
              width: dw * 0.75,
              color: Color(0xff707070),
            ),
          ),
          RowCart(orderAdd.titel4, belat, numberVoid4, numberVoid14),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 2,
              width: dw * 0.75,
              color: Color(0xff707070),
            ),
          ),
          RowCart(orderAdd.titel5, cla, numberVoid5, numberVoid15),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Container(
              height: 2,
              width: dw * 0.75,
              color: Color(0xff707070),
            ),
          ),
          textFelNot(sh, dw)
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  RowCart(String titel, int number, Function function, Function mm) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 50,
          width: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Color(0xff707070), width: 2)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: InkWell(
                      onTap: () {
                        function();
                      },
                      child: Icon(
                        Icons.add,
                        size: 40,
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 2,
                    color: Color(0xff707070),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      number.toString(),
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 2,
                    color: Color(0xff707070),
                  )
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      mm();
                    },
                    child: Icon(
                      Icons.remove,
                      size: 40,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 30,
          width: 80,
          child: Text(
            titel,
            textAlign: TextAlign.end,
            style: TextStyle(
                color: Color(0xff643507),
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }

  Widget textFelNot(double sh, sw) {
    return Container(
      height: sh * 0.15,
      width: sw * 0.8,
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xff707070).withOpacity(0.5)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          hintText: " اضف ملاحظاتك هنااو طلبات اخر او طلب حلا",
          hintStyle: TextStyle(
              color: Color(0xff643507).withOpacity(0.3),
              fontStyle: FontStyle.italic,
              height: 5,
              textBaseline: TextBaseline.ideographic),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
