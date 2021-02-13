import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final Size size = MediaQuery.of(context).size;
    final double pinkSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              top: pinkSize * -.5,
              right: pinkSize * -.2,
              child: Circle(
                size: pinkSize,
                colors: [Colors.pinkAccent, Colors.pink],
              ),
            ),
            Positioned(
              top: orangeSize * -.5,
              left: orangeSize * -.15,
              child: Circle(
                size: orangeSize,
                colors: [Colors.amber, Colors.red],
              ),
            ),
            Positioned(
              top: responsive.wp(19),
              child: Column(
                children: [
                  IconContainer(
                    size: size.width * .2,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Hello again\nWelcome Back',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: responsive.dp(1.5)),
                  ),
                  LoginForm(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
