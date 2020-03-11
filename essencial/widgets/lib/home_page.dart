import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("titulo"),
      ),
      drawer: Container(
        color: Colors.amber,
      ),
      body: Container(
        child: Center(
          child: Image.asset(
            "assets/images/dog2.png",
            width: 300,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
