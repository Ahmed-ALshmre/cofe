import 'package:flutter/material.dart';
import 'package:flutter_appds/screen/call.dart';
import 'package:flutter_appds/screen/chosemainew.dart';
import 'package:flutter_appds/screen/orded2.dart';
import 'package:flutter_appds/screen/pay.dart';
import 'package:flutter_appds/screen/show.dart';
import 'package:flutter_appds/screen/splashscreen.dart';
import 'package:flutter_appds/tools/nav.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: Size(750, 1334),
      allowFontScaling: false,
      child:MaterialApp(
      theme: ThemeData(
    fontFamily: 'Regular',
    visualDensity: VisualDensity.adaptivePlatformDensity,

      ),
    home: SplashScreen(),
      )
      );
  }
}
