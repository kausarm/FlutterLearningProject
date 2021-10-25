import 'package:flutter/material.dart';
// import 'package:kausar/pages/tugas/drag.dart';
import 'package:kausar/pages/tugas/textfiled.dart';
// import 'package:kausar/pages/tugas/image_widget.dart';
// import 'package:kausar/pages/tugas/latihan_dragable.dart';
// import 'package:kausar/pages/tugas/latihan_dragable.dart';
// import 'package:kausar/pages/tugas/image_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      home: const Field(),
    );
  }
}
