import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:observablesmobx/app/home/components/item_widget.dart';
import 'package:observablesmobx/app/home/home_controller.dart';
import 'package:observablesmobx/app/home/models/item_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  _dialog() {
    var _item = ItemModel();
    return showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text("Adicionar item"),
            content: TextField(
              onChanged: _item.setTitle,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Adicionar novo item"),
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancelar"),
              ),
              FlatButton(
                onPressed: () {
                  controller.addItem(_item);
                  Navigator.pop(context);
                },
                child: Text("Salvar"),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(hintText: "Pesquisa"),
          onChanged: controller.setSearch,
        ),
      ),
      body: Observer(builder: (_) {
        return GridView.builder(
          itemCount: controller.listFilteredItem.length,
          itemBuilder: (_, index) {
            final currentItem = controller.listFilteredItem[index];
            return ItemWidget(
                item: currentItem,
                removeClicked: () {
                  controller.removeItem(currentItem);
                });
          },
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          return _dialog();
        },
      ),
    );
  }
}
