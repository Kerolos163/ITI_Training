// import 'package:finail/screens/scr2.dart';
// import 'package:flutter/material.dart';
// import 'wepage.dart';
// void main() {
//   runApp( MaterialApp(
//     debugShowCheckedModeBanner:false,
//      theme: ThemeData
//     (
//       primarySwatch: Colors.amber,
//       canvasColor: Colors.white,
//       iconTheme: const IconThemeData(color: Colors.white,size: 100),
//     ),
//     home:TABS_SCREEN() ,
//   ));
// }

import 'package:finail/screens/login.dart';
import 'package:flutter/material.dart';
import 'wepage.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner:false,
     theme: ThemeData
    (
      primarySwatch: Colors.amber,
      canvasColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.white,size: 50),
    ),
home:LOGIN(),
//home:TABS_SCREEN(),
//    home:welpage() ,

  ));
}