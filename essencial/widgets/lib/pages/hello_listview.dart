import 'package:flutter/material.dart';
import 'package:widgets/pages/dog_page.dart';
import 'package:widgets/utils/nav.dart';

class Dog {
  String name;
  String photo;

  Dog(this.name, this.photo);
}

class HelloListView extends StatefulWidget {
  @override
  _HelloListViewState createState() => _HelloListViewState();
}

class _HelloListViewState extends State<HelloListView> {
  bool _gridView = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.grid_on),
            onPressed: () {
              setState(() {
                _gridView = true;
              });
            },
          ),
          IconButton(
            icon: Icon(Icons.list),
            onPressed: () {
              setState(() {
                _gridView = false;
              });
            },
          )
        ],
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

    return _gridView ? _gridItemView(dogs) : _listItemView(dogs);
  }

  GridView _gridItemView(List<Dog> dogs) {
    return GridView.builder(
      itemCount: dogs.length,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => push(context, DogPage(dogs[index])),
          child: Stack(
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
          ),
        );
      },
    );
  }

  ListView _listItemView(List<Dog> dogs) {
    return ListView.builder(
      itemCount: dogs.length,
      itemExtent: 300,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => push(context, DogPage(dogs[index])),
          child: Stack(
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
          ),
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
