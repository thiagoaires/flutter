import 'package:carros/api/carros_api.dart';
import 'package:carros/widgets/car_list_view.dart';
import 'package:carros/widgets/drawer_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      child: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          bottom: TabBar(
            tabs: <Widget>[
              Tab(
                text: "Classicos",
              ),
              Tab(
                text: "Esportivos",
              ),
              Tab(
                text: "Luxo",
              ),
            ],
          ),
        ),
        drawer: DrawerList(),
        body: TabBarView(
          children: <Widget>[
            CarListView(TipoCarro.classicos),
            CarListView(TipoCarro.esportivos),
            CarListView(TipoCarro.luxo),
          ],
        ),
      ),
      length: 3,
    );
  }
}
