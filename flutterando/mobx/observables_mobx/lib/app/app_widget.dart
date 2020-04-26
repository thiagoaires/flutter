import 'package:flutter/material.dart';
import 'package:observablesmobx/app/home/home_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter observable",
      theme: ThemeData.dark(),
      home: HomePage(),
    );
  }
}
