import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern/controller/my_controller.dart';

class MeuApp extends StatelessWidget {
  final MyController controller = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Zapzap'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: null,
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: null,
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetX<MyController>(
              builder: (_) => Text(_.num.toString()),
            ),
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <FloatingActionButton>[
            FloatingActionButton(
              onPressed: () => controller.increment(),
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
              onPressed: () => controller.decrement(),
              child: Icon(Icons.remove),
            )
          ],
        ),
      ),
    );
  }
}
