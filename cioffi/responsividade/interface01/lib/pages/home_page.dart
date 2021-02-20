import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(
            "biggest: ${constraints.biggest}, smallest: ${constraints.smallest}");
        return Scaffold(
          appBar: AppBar(
            backgroundColor:
                constraints.minWidth > 500 ? Colors.blue : Colors.yellow,
          ),
        );
      },
    );
  }
}
