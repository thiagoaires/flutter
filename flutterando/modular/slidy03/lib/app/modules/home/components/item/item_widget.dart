import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy03/app/modules/home/home_controller.dart';

class ItemWidget extends StatelessWidget {
  final int index;
  final HomeController controller = Modular.get();

  ItemWidget(this.index);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(controller.list[index]),
      trailing: IconButton(
        icon: Icon(
          Icons.cancel,
          color: Colors.red,
        ),
        onPressed: () {
          controller.delete(index);
        },
      ),
    );
  }
}
