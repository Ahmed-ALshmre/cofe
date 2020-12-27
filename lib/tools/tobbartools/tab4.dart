import 'package:flutter/material.dart';
import 'package:flutter_appds/model/tools_accapt.dart';

import '../conter.dart';

class Tab4 extends StatefulWidget {
  @override
  _Tab4State createState() => _Tab4State();
}

class _Tab4State extends State<Tab4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Tools2(
          cofe: "قهوة عربي",
          tea: "شاهي",
          clase: "فناجيل",
          titelBote: "الغاء",
          acceq: false,
        ),
        SizedBox(
          height: 20,
        ),
        Tools2(
          cofe: "قهوة عربي",
          tea: "",
          clase: "فناجيل",
          titelBote: "تم الانتهاء",
          acceq: false,
        ),
        SizedBox(
          height: 20,
        ),
        Tools2(
          cofe: "قهوة عربي",
          tea: "شاهي",
          clase: "فناجيل",
          titelBote: "عرض جديد",
          acceq: false,
        ),
      ],
    );
  }
}
