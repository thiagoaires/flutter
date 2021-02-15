import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Container(
          color: Colors.amber,
          height: constraints.maxHeight * .9,
          width: constraints.maxWidth * .9,
          child: Text(constraints.maxWidth.toString()),
        );
      },
    );
  }
}
