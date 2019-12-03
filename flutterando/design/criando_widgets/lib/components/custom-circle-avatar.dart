import 'package:flutter/material.dart';

class CustomCircleAvatar extends StatelessWidget {
  final String textCA;
  final Color colorCA;

  const CustomCircleAvatar({Key key, this.textCA, this.colorCA}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 40,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: Colors.red, borderRadius: BorderRadius.circular(40)),
      child: Text(textCA, style: TextStyle(color: colorCA)),
    );
  }
}
