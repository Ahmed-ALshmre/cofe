import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appds/model/appbarmode.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:flutter_appds/tools/tobbartools/tab1.dart';
import 'package:flutter_appds/tools/tobbartools/tab2.dart';
import 'package:flutter_appds/tools/tobbartools/tab3.dart';
import 'package:flutter_appds/tools/tobbartools/tab4.dart';

class Accept2 extends StatefulWidget {
  @override
  _Accept2State createState() => _Accept2State();
}

class _Accept2State extends State<Accept2> with SingleTickerProviderStateMixin {
  TabController _tabController;

  Tools _tools = Tools();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 1,
    );
  }

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _tools.appB("قبول العرض"),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Recoerd(
              sieh: sh,
              siew: sw,
            ),
            SizedBox(
              height: 20,
            ),
            TabBar(
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.black,
              labelColor: Colors.red,
              dragStartBehavior: DragStartBehavior.start,
              tabs: [
                Tab(
                  child: Text(
                    "السابقة",
                    style: TextStyle(color: Color(0xff7E6E52), fontSize: 18),
                  ),
                ),
                Tab(
                  child: Text(
                    "الحالية",
                    style: TextStyle(color: Color(0xff7E6E52), fontSize: 18),
                  ),
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Tab2(),
                  Tab4(),
                ],
                controller: _tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
