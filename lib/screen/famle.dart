import 'package:flutter/material.dart';
import 'package:flutter_appds/model/appbarmode.dart';

class Fmaile extends StatefulWidget {
  @override
  _FmaileState createState() => _FmaileState();
}

class _FmaileState extends State<Fmaile> {
Tools _tools =Tools();
  @override
  Widget build(BuildContext context) {
    double sh =MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar:_tools.appB("أسر المنتجة") ,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text("لا يوجد اسر منجه "),
          ),
        ],
      ),

    );
  }
}
