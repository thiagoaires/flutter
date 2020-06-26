import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:slidy01/app/modules/home/home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final homeController = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("home"),
      ),
      body: Observer(builder: (_) {
        if (homeController.pokemons.error != null) {
          print(homeController.pokemons.error);
          return Center(
            child: RaisedButton(
              onPressed: () {
                homeController.fetchPokemons();
              },
              child: Text('Lista nao carregada, aperte novamente'),
            ),
          );
        }

        if (homeController.pokemons.value == null) {
          return Center(
            child: CircularProgressIndicator(),
          );
        }

        var list = homeController.pokemons.value;

        return ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            print(list[index].name);
            return ListTile(
              title: Text(list[index].name),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () => homeController.fetchPokemons(),
        child: Icon(Icons.add),
      ),
    );
  }
}
