import 'package:flutter/material.dart';

class HelloPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello page"),
      ),
      body: Container(
        child: Text("page 1"),
      ),
    );
  }
}
