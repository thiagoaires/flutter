import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy01/app/modules/home/home_controller.dart';
import 'package:slidy01/app/modules/home/home_page.dart';
import 'package:slidy01/app/modules/home/repository/poke_repository.dart';

class HomeModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => HomeController(i.get())),
        Bind((i) => PokeRepository(i.get())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => HomePage()),
      ];
}
