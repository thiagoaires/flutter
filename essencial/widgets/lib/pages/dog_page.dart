import 'package:flutter/material.dart';

import 'hello_listview.dart';

class DogPage extends StatelessWidget {
  final Dog dog;

  DogPage(this.dog);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(dog.name),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: _img(dog.photo),
      ),
    );
  }
}

_img(String path) {
  return Image.asset(
    "assets/images/$path",
    fit: BoxFit.cover,
  );
}
