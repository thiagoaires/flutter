import 'package:slidy02/app/modules/login/login_module.dart';
import 'package:slidy02/app/pages/splash/splash_page.dart';

import 'pages/splash/splash_controller.dart';
import 'package:dio/dio.dart';
import 'package:slidy02/app/shared/utils/constants.dart';

import 'app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:slidy02/app/app_widget.dart';
import 'package:slidy02/app/modules/home/home_module.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => SplashController()),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute, child: (_, __) => SplashPage()),
        Router('/home', module: HomeModule()),
        Router('/login', module: LoginModule())
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
