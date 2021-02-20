import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:interface01/pages/home_page.dart';

void main() {
  runApp(DevicePreview(builder: (_) => MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      home: HomePage(),
    );
  }
}
