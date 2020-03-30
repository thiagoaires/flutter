import 'package:carros/api/carros_api.dart';
import 'package:carros/prefs.dart';
import 'package:carros/widgets/car_list_view.dart';
import 'package:carros/widgets/drawer_list.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin<HomePage> {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(
      vsync: this,
      length: 3,
    );
    Future<int> currentTab =
        Prefs.getInt("TabIndex").then((idx) => _tabController.index = idx);
    _tabController.addListener(() {
      print("index ${_tabController.index}");
      Prefs.setInt("TabIndex", _tabController.index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HomePage"),
        bottom: TabBar(
          controller: _tabController,
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
        controller: _tabController,
        children: <Widget>[
          CarListView(TipoCarro.classicos),
          CarListView(TipoCarro.esportivos),
          CarListView(TipoCarro.luxo),
        ],
      ),
    );
  }
}
