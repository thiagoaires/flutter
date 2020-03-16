import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("badau"),
              accountEmail: Text("bada@ui.com"),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage("assets/images/dog2.png"),
              ),
            ),
            ListTile(
              leading: Icon(Icons.stars),
              title: Text("Favoritos"),
              subtitle: Text("Subtitulo fav"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                print("ok");
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.delete_outline),
              title: Text("Apagar"),
              subtitle: Text("Subtitulo fav"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
                print("Apagar");
              },
            ),
            ListTile(
              leading: Icon(Icons.flag),
              title: Text("Bandeira"),
              subtitle: Text("Subtitulo fav"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                Navigator.pop(context);
                print("Bandeira");
              },
            ),
          ],
        ),
      ),
    );
  }
}
