import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/homepage_Screen.dart';
import 'package:flutter_application_1/widgets/navbar_roots.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepage_screen(),
    );
  }
}
