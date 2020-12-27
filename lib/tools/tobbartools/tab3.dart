import 'package:flutter/material.dart';

import '../conter.dart';

class Tab3 extends StatefulWidget {
  @override
  _Tab3State createState() => _Tab3State();
}

class _Tab3State extends State<Tab3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 30,
        ),
        Esee(
          cofe: "قهوة عربي",
          tea: "شاهي",
          clase: "فناجيل",
          titelBote: "الغاء",
          acceq: false,
        ),
        SizedBox(
          height: 20,
        ),
        Esee(
          cofe: "قهوة عربي",
          tea: "",
          clase: "فناجيل",
          titelBote: "تم الانتهاء",
          acceq: false,
        ),
        SizedBox(
          height: 20,
        ),
        Esee(
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
