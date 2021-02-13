import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class IconContainer extends StatelessWidget {
  final double size;

  IconContainer({this.size}) : assert(size != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black38,
            offset: Offset(2, 2),
            blurRadius: 4,
          ),
        ],
      ),
      width: this.size,
      height: this.size,
      child: Center(
        child: SvgPicture.asset(
          'assets/logo.svg',
          width: this.size * .8,
        ),
      ),
    );
  }
}
