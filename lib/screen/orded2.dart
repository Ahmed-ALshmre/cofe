
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_appds/model/appbarmode.dart';
import 'package:flutter_appds/tools/recoerd.dart';
import 'package:flutter_appds/tools/tobbartools/tab1.dart';
import 'package:flutter_appds/tools/tobbartools/tab2.dart';
import 'package:flutter_appds/tools/tobbartools/tab3.dart';

class Order2 extends StatefulWidget {
  @override
  _Order2State createState() => _Order2State();
}

class _Order2State extends State<Order2> with SingleTickerProviderStateMixin {
  TabController _tabController;

  Tools _tools = Tools();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 2,
    );
  }

  @override
  Widget build(BuildContext context) {
    double sh = MediaQuery.of(context).size.height;
    double sw = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: _tools.appB("العروض"),
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
                  child: Text("خدمات الطلبات",style: TextStyle(color: Color(0xff7E6E52),fontSize: 18),),
                ),
                Tab(
                  child: Text("السابقة",style: TextStyle(color: Color(0xff7E6E52),fontSize: 18),),
                ),
                Tab(
                  child: Text("الحالية",style: TextStyle(color: Color(0xff7E6E52),fontSize: 18),),
                )
              ],
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Tap1(),
                  Tab2(),
                  
          Tab3()
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
