
import 'package:flutter/material.dart';

import 'addordr.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> imageList = [
    "assets/m2.png",
    "assets/m3.png",
    "assets/m121.png",
  ];
  List<String> _listString = [
    "قهوة و شاهي",
    "نفسك في ورق عنب ",
    "ناقصك أغراض الطلعة"
  ];

  @override
  Widget build(BuildContext context) {
    double siew = MediaQuery.of(context).size.width;
    double sieh = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: appBarText(context),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: sieh * 0.06,
              width: siew * 0.97,
              decoration: BoxDecoration(
                color: Color(0xff643507),
                borderRadius: BorderRadius.circular(19),
              ),
              child: Center(
                child: Text(
                  "ما تكمل الطلعة الا بحلا",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          ),
          Flexible(
            child: ListViewbuildertest(context, sieh, siew),
          )
        ],
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
      title: Container(
        alignment: Alignment.center,
        padding: EdgeInsets.only(bottom: 1),
        width: 147,
        height: 26,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            "قهوة حلا",
            style: TextStyle(color: Color(0xff643507), fontSize: 15),
            textAlign: TextAlign.center,
          ),
        ),
      ),
      actions: [
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

  // ignore: non_constant_identifier_names
  ListViewbuildertest(co, sh, sw) {
    return ListView.builder(
      itemCount: _listString.length,
      itemBuilder: (c, index) {
        return Column(
          children: [
            SizedBox(
              height: 3,
            ),
            InkWell(
              onTap: (){
                Route route =MaterialPageRoute(builder: (_)=>AddOrder());
                Navigator.push(context, route);
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: sh * 0.25,
                width: sw * 0.99,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imageList[index]),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: EdgeInsets.only(bottom: 40, left: 10),
                  child: Container(
                    height: 38,
                    width: 182,
                    color: Color(0xff5F4C3A).withOpacity(0.7),
                    child: Center(
                      child: Text(
                        _listString[index],
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            )
          ],
        );
      },
    );
  }
}
