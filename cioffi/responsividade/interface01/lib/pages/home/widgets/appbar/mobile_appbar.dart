import 'package:flutter/material.dart';

class MobileAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text('Flutter'),
      centerTitle: true,
      actions: [
        IconButton(icon: Icon(Icons.search), onPressed: (){}),
        IconButton(icon: Icon(Icons.shopping_cart), onPressed: (){}),
      ],

    );
  }
}