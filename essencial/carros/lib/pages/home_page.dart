import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
      ),
      body: Container(
        child: Center(
          child: Text(
            "Home da pagina com login",
            style: TextStyle(fontSize: 22),
          ),
        ),
      ),
    );
  }
}
