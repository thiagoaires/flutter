import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:observablesmobx/app/home/models/item_model.dart';

class ItemWidget extends StatelessWidget {
  final ItemModel item;
  final Function removeClicked;

  ItemWidget({this.item, this.removeClicked});

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return ListTile(
          title: Text(item.title),
          trailing: IconButton(
            icon: Icon(
              Icons.remove_circle,
              color: Colors.red,
            ),
            onPressed: removeClicked,
          ),
          leading: Checkbox(
            value: item.check,
            onChanged: item.setCheck,
          ),
        );
      },
    );
  }
}
