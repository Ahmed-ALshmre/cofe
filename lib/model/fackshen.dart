

import 'package:flutter/material.dart';
import 'package:flutter_appds/screen/orded2.dart';
import 'package:flutter_appds/tools/boutem.dart';

class Fuvkshen {
   showBottom(context, bool vlue2, bool vlue) {
    showBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (BuildContext context, StateSetter setState) {
              return Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                    color: Color(0xffE9E9E9)),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 140,
                      width: 340,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          border: Border.all()),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "sr",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 20),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Container(
                                    width: 100,
                                    height: 33,
                                    decoration: BoxDecoration(
                                      border:
                                          Border.all(color: Color(0xff707070)),
                                    ),
                                    child: Center(child: Text("100")),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text(
                                    "سعر العرض",
                                    style: TextStyle(
                                        color: Color(0xff643507), fontSize: 15),
                                  )
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 1.5,
                            width: 310,
                            color: Color(0xff707070),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  Text(
                                    "التسليم مباشرة",
                                    style: TextStyle(
                                        color: Color(0xff643507), fontSize: 15),
                                  ),
                                  Checkbox(
                                    value: vlue2,
                                    onChanged: (vale) {
                                      setState(() {
                                        vlue2 = vale;
                                      });
                                      print(vlue);
                                    },
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  SizedBox(width: 15),
                                  Text(
                                    "أمكانية التوصيل",
                                    style: TextStyle(
                                        color: Color(0xff643507), fontSize: 15),
                                  ),
                                  Checkbox(
                                    value: vlue,
                                    onChanged: (vale) {
                                      setState(() {
                                        vlue = vale;
                                      });
                                      print(vlue);
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Botumin((){
                      Navigator.push(context, MaterialPageRoute(builder: (_)=>Order2()));
                    }, "ارسال الطلب")
                  ],
                ),
              );
            },
          );
        });
  }
   showBtom(context, bool vlue2, bool vlue) {
     showBottomSheet(
         context: context,
         builder: (BuildContext context) {
           return StatefulBuilder(
             builder: (BuildContext context, StateSetter setState) {
               return Container(
                 height: MediaQuery.of(context).size.height*0.44,
                 width: MediaQuery.of(context).size.width,
                 decoration: BoxDecoration(
                     borderRadius: BorderRadius.only(
                       topLeft: Radius.circular(25),
                       topRight: Radius.circular(25),
                     ),
                     color: Color(0xffE9E9E9)),
                 child: Column(
                   children: [
                     SizedBox(
                       height: 20,
                     ),
                     Container(
                       height: 140,
                       width: 340,
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           color: Colors.white,
                           border: Border.all()),
                       child: Column(
                         children: [
                           SizedBox(
                             height: 20,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Row(
                                 children: [
                                   Text(
                                     "sr",
                                     style: TextStyle(
                                         color: Colors.black, fontSize: 20),
                                   ),
                                   SizedBox(
                                     width: 10,
                                   ),
                                   Container(
                                     width: 100,
                                     height: 33,
                                     decoration: BoxDecoration(
                                       border:
                                       Border.all(color: Color(0xff707070)),
                                     ),
                                     child: Center(child: Text("100")),
                                   ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   Text(
                                     "سعر العرض",
                                     style: TextStyle(
                                         color: Color(0xff643507), fontSize: 15),
                                   )
                                 ],
                               ),
                             ],
                           ),
                           SizedBox(
                             height: 10,
                           ),
                           Container(
                             height: 1.5,
                             width: 310,
                             color: Color(0xff707070),
                           ),
                           SizedBox(
                             height: 5,
                           ),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               Row(
                                 children: [
                                   SizedBox(width: 15),
                                   Text(
                                     "التسليم مباشرة",
                                     style: TextStyle(
                                         color: Color(0xff643507), fontSize: 15),
                                   ),
                                   Checkbox(
                                     value: vlue2,
                                     onChanged: (vale) {
                                       setState(() {
                                         vlue2 = vale;
                                       });
                                       print(vlue);
                                     },
                                   ),
                                 ],
                               ),
                               Row(
                                 children: [
                                   SizedBox(width: 15),
                                   Text(
                                     "أمكانية التوصيل",
                                     style: TextStyle(
                                         color: Color(0xff643507), fontSize: 15),
                                   ),
                                   Checkbox(
                                     value: vlue,
                                     onChanged: (vale) {
                                       setState(() {
                                         vlue = vale;
                                       });
                                       print(vlue);
                                     },
                                   ),
                                 ],
                               ),
                             ],
                           ),
                         ],
                       ),
                     ),
                     SizedBox(
                       height: 10,
                     ),
                     InkWell(
                       child: Container(
                         height: 70,
                         width: 400,
                         decoration: BoxDecoration(
                             color: Color(0xff9E8356),
                             borderRadius: BorderRadius.circular(20)),
                         child: Center(
                           child: Text(
                             "ارسال الطلب",
                             style: TextStyle(
                               fontSize: 20,
                               color: Colors.white,
                             ),
                           ),
                         ),
                       ),
                     ),
                     SizedBox(height: 15,),
                     Botumin((){
                     }, "الغاء العرض "),
                     SizedBox(height: 20,),


                   ],
                 ),
               );
             },
           );
         });
   }
}
