import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final double pinkSize = responsive.wp(85);
    final double orangeSize = responsive.wp(69);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: -orangeSize * .50,
            left: -orangeSize * .20,
            child: Circle(
              size: orangeSize,
              colors: [
                Colors.orange,
                Colors.deepOrangeAccent,
              ],
            ),
          ),
          Positioned(
            right: -pinkSize * .40,
            top: -pinkSize * .50,
            child: Circle(
              size: pinkSize,
              colors: [
                Colors.pink,
                Colors.pinkAccent,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
