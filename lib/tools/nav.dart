import 'package:flutter/material.dart';
import 'package:flutter_appds/screen/accepttheoffer.dart';
import 'package:flutter_appds/screen/addordr.dart';
import 'package:flutter_appds/screen/asses.dart';
import 'package:flutter_appds/screen/call.dart';
import 'package:flutter_appds/screen/famle.dart';
import 'package:flutter_appds/screen/homescreen.dart';
import 'package:flutter_appds/screen/setting.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _currentTabIndex = 3;

  @override
  Widget build(BuildContext context) {
    final _kTabPages = <Widget>[
      Setting(),
      Fmaile(),
      Accept2(),
      HomeScreen()
    ];
    final _kBottmonNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(
        icon: SvgPicture.asset(
          'assets/icon/56.svg',
          height: 25,
        ),
        label: 'الاعدادت',
      ),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon/10.svg',
            height: 30,
          ),
          label: 'السر المنتجة'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon/80.svg',
            height: 30,
          ),
          label: 'طلباتي'),
      BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/icon/m13.svg',
            height: 30,
          ),
          label: 'الرئيسة'),
    ];
    assert(_kTabPages.length == _kBottmonNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      elevation: 100,
      unselectedLabelStyle: TextStyle(
        fontSize: 12,
      ),
      fixedColor: Color(0xff9E8356),
      items: _kBottmonNavBarItems,
      unselectedItemColor: Colors.red,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return SafeArea(
      child: Scaffold(
        body: _kTabPages[_currentTabIndex],
        bottomNavigationBar: bottomNavBar,
      ),
    );
  }
}
