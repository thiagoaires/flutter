import 'package:flutter/material.dart';
import 'package:lojavirtual/commom/custom_drawer/custom_drawer.dart';

class BaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    return PageView(
      controller: controller,
      physics: NeverScrollableScrollPhysics(),
      children: <Widget>[
        Scaffold(
          drawer: CustomDrawer(),
          appBar: AppBar(
            title: Text('Home'),
          ),
        ),
        Container(color: Colors.green),
        Container(color: Colors.yellow),
        Container(color: Colors.red)
      ],
    );
  }
}
