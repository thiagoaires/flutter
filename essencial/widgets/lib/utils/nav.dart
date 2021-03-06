import 'package:flutter/material.dart';

Future<String> push(BuildContext context, Widget page) {
  return Navigator.push(
    context,
    MaterialPageRoute(builder: (BuildContext context) {
      return page;
    }),
  );
}

void pop(BuildContext context, String texto) => Navigator.pop(context, texto);
