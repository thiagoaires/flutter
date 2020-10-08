import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_youtube/controllers/home_controller.dart';
import 'package:getx_youtube/pages/widgets/home_list.dart';

class HomePage extends StatelessWidget {
  final HomeController _controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_) => Scaffold(
        appBar: AppBar(),
        //body: Center(child: Text(_.counter.toString())),
        body: HomeList(),
        floatingActionButton: FloatingActionButton(
          onPressed: () => _.increment(),
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
