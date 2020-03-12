import 'package:flutter/material.dart';

class Dog {
  String name;
  String photo;

  Dog(this.name, this.photo);
}

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
      ),
      body: Container(
        child: _pageView(context),
      ),
    );
  }

  _pageView(BuildContext context) {
    List<Dog> dogs = [
      Dog("Dog1", "dog1.png"),
      Dog("Dog2", "dog2.png"),
      Dog("Dog3", "dog3.png"),
      Dog("Dog4", "dog4.png"),
      Dog("Dog5", "dog5.png"),
    ];

    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 300,
      itemBuilder: (context, index) {
        return Stack(
          fit: StackFit.expand,
          children: <Widget>[
            _img(dogs[index].photo),
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.black26,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  dogs[index].name,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  _img(String path) {
    return Image.asset(
      "assets/images/$path",
      fit: BoxFit.cover,
    );
  }
}
