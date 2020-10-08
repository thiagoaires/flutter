import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:getx_youtube/controllers/splash_controller.dart';

class SplashPage extends StatelessWidget {
  final SplashController _controller = SplashController();

  @override
  Widget build(BuildContext context) {
    return GetBuilder<SplashController>(
      init: _controller,
      builder: (_) => Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
