import 'package:flutter/material.dart';

class Circle extends StatelessWidget {
  final double size;
  final List<Color> colors;

  const Circle({
    @required this.size,
    this.colors,
  })  : assert(size != null),
        assert(colors.length >= 2);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.size,
      width: this.size,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: this.colors,
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter),
        shape: BoxShape.circle,
      ),
    );
  }
}
