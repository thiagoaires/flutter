import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
          home: Scaffold(
        body: Column(
          children: <Widget>[
            Card(
                child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Titulo"),
              subtitle: Text("descricao"),
            )),
            Card(
                child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text("Titulo"),
              subtitle: Text("descricao"),
            )),
          ],
        ),
        appBar: AppBar(
          title: Text("Transferencias"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.access_alarm),
        ),
      )),
    );
