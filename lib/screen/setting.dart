import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_appds/model/appbarmode.dart';
import 'package:flutter_appds/screen/show.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:flutter_svg/parser.dart';

import 'accepttheoffer.dart';
import 'asses.dart';
import 'call.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  Tools _tools = Tools();
  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _tools.appB("الاعدادت"),
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
              height: 15,
            ),
            Container(
              height: 150,
              width: 150,
              child: Center(
                child: Image.asset("assets/54.png"),
              ),
            ),
            ListTile(
              tileColor: Color(0xff9E8356),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.call),
              ),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => Call());
                Navigator.push(context, route);
              },
              title: Center(child: Text("اتصل بنا")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Color(0xff9E8356),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.article),
              ),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => Call());
              },
              title: Center(child: Text("سياسة التطبيق ")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Color(0xff9E8356),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.card_travel),
              ),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => Accept2());
                Navigator.push(context, route);
              },
              title: Center(child: Text("طلبات ")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Color(0xff9E8356),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.add_comment_outlined),
              ),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => Asses());
                Navigator.push(context, route);
                },
              title: Center(child: Text("من نحنا")),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              tileColor: Color(0xff9E8356),
              trailing: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.people),
              ),
              onTap: () {
                Route route = MaterialPageRoute(builder: (_) => Show());
                Navigator.push(context, route);
              },
              title: Center(child: Text("بيناتي")),
            ),
          ],
        ),
      ),
    );
  }
}
