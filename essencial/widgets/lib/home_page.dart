import 'package:flutter/material.dart';
import 'package:widgets/drawer_list.dart';
import 'package:widgets/pages/hello_listview.dart';
import 'package:widgets/pages/hello_page2.dart';
import 'package:widgets/pages/hello_page3.dart';
import 'package:widgets/utils/nav.dart';
import 'package:widgets/widget/blue_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
          appBar: AppBar(
            title: Text("titulo"),
            bottom: TabBar(
              tabs: <Widget>[
                Tab(
                  text: "Tab1",
                ),
                Tab(
                  text: "Tab2",
                ),
              ],
            ),
          ),
          drawer: DrawerList(),
          body: TabBarView(
            children: <Widget>[
              _body(size),
              Container(
                color: Colors.deepOrangeAccent,
              ),
            ],
          )),
    );
  }

  Container _body(Size size) {
    return Container(
      height: size.height,
      color: Colors.amber,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 16,
          ),
          _text(),
          _pageView(),
          _buttons(),
        ],
      ),
    );
  }

  _buttons() {
    return Builder(
      builder: (context) {
        return Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButton(
                  "page ListView",
                  onPressed: () => _onClickNavigator(context, HelloListView()),
                ),
                BlueButton(
                  "page 2",
                  onPressed: () => _onClickNavigator(context, HelloPage2()),
                ),
                BlueButton(
                  "page 3",
                  onPressed: () => _onClickNavigator(context, HelloPage3()),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                BlueButton(
                  "Snack",
                  onPressed: () => _onClickSnack(context),
                ),
                BlueButton(
                  "DIalog",
                  onPressed: () => _onClickDialog(context),
                  color: Colors.amberAccent,
                ),
                BlueButton(
                  "Toast",
                  onPressed: () => _onClickToast,
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);
    print(">>> $s");
  }

  _onClickSnack(BuildContext context) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text("123"),
      action: SnackBarAction(
        onPressed: () => print("Snaclicked"),
        label: "OK",
      ),
    ));
  }

  _onClickDialog(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      child: WillPopScope(
        child: AlertDialog(
          title: Text("Titulo popup"),
          actions: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Cancelar"),
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context);
                print("ok");
              },
              child: Text("OK"),
            ),
          ],
        ),
        onWillPop: () async => false,
      ),
    );
  }

  _onClickToast() {}

  _pageView() {
    return Container(
      height: 300,
      margin: EdgeInsets.all(8),
      child: PageView(
        children: <Widget>[
          _img("dog1.png"),
          _img("dog2.png"),
          _img("dog3.png"),
          _img("dog4.png"),
          _img("dog5.png"),
        ],
      ),
    );
  }

  _text() {
    return Text(
      "Bom dia",
      style: TextStyle(
          fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }

  _img(String path) {
    return Image.asset(
      "assets/images/$path",
      fit: BoxFit.cover,
    );
  }
}
