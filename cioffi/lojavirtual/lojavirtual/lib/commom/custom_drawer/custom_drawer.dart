import 'package:flutter/material.dart';
import 'package:lojavirtual/commom/custom_drawer/drawer_tile.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerTile(
            iconData: Icons.alternate_email,
            title: 'Home',
            page: 0,
          ),
          DrawerTile(
            iconData: Icons.alternate_email,
            title: 'Produtos',
            page: 1,
          ),
          DrawerTile(
            iconData: Icons.alternate_email,
            title: 'Meus pedidos',
            page: 2,
          ),
          DrawerTile(
            iconData: Icons.alternate_email,
            title: 'Lojas',
            page: 3,
          ),
        ],
      ),
    );
  }
}
