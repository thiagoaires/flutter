import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy01/app/app_controller.dart';
import 'package:slidy01/app/app_widget.dart';
import 'package:slidy01/app/pages/home/home_controller.dart';
import 'package:slidy01/app/pages/home/home_page.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => HomeController()),
      ];

  @override
  // TODO: implement bootstrap
  Widget get bootstrap => AppWidget();

  @override
  // TODO: implement routers
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];
}
