import 'package:flutter/material.dart';

Future<String> push(BuildContext context, Widget page,
    {bool replacement = false}) {
  if (replacement) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  } else {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (BuildContext context) {
        return page;
      }),
    );
  }
}

bool pop(BuildContext context, String texto) => Navigator.pop(context, texto);
