import 'package:carros/model/user.dart';
import 'package:carros/pages/login_page.dart';
import 'package:carros/utils/nav.dart';
import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  Future<User> currentUser = User.get();

  Widget _header(User user) {
    return UserAccountsDrawerHeader(
      accountName: Text(user.nome),
      accountEmail: Text(user.email),
      currentAccountPicture: CircleAvatar(
        backgroundImage: NetworkImage(user.urlFoto),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: ListView(
          children: <Widget>[
            FutureBuilder<User>(
              future: currentUser,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                User user = snapshot.data;
                return user != null ? _header(user) : Container();
              },
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
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Logout"),
              subtitle: Text("Subtitulo fav"),
              trailing: Icon(Icons.arrow_forward),
              onTap: () {
                _onClickLogout(context);
                print("Bandeira");
              },
            ),
          ],
        ),
      ),
    );
  }

  void _onClickLogout(BuildContext context) {
    User.clear();
    Navigator.pop(context);
    push(context, LoginPage(), replacement: true);
  }
}
