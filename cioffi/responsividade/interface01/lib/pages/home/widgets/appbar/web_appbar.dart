import 'package:flutter/material.dart';
import 'package:interface01/pages/home/widgets/appbar/web_appbar_responsive_content.dart';

class WebAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: [
          Text('Flutter'),
          SizedBox(
            width: 32,
          ),
          WebAppbarResponsiveContent(),
          SizedBox(
            width: 32,
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          SizedBox(
            width: 32,
          ),
          SizedBox(
            height: 38,
            child: OutlineButton(
              child: Text('Fazer login'),
              textColor: Colors.white,
              borderSide: BorderSide(color: Colors.white),
              onPressed: () {},
            ),
          ),
          SizedBox(
            width: 8,
          ),
          SizedBox(
              height: 40,
              child: RaisedButton(
                child: Text('Cadastre-se'),
                onPressed: () {},
              ))
        ],
      ),
      actions: [],
    );
  }
}
