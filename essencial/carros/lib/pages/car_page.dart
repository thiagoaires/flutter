import 'package:carros/model/car.dart';
import 'package:flutter/material.dart';

class CarPage extends StatelessWidget {
  Car car;

  CarPage(this.car);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(car.nome),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.place),
            onPressed: _onClickMapa,
          ),
          IconButton(
            icon: Icon(Icons.videocam),
            onPressed: _onClickVideo,
          ),
          PopupMenuButton<String>(
            onSelected: (String value) => _onClickMenu(value),
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  value: "Editar",
                  child: Text("Editar"),
                ),
                PopupMenuItem(
                  value: "Compartilhar",
                  child: Text("Compartilhar"),
                ),
                PopupMenuItem(
                  value: "Salvar",
                  child: Text("Salvar"),
                ),
              ];
            },
          ),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: <Widget>[
            Container(
              child: Image.network(car.urlFoto),
            ),
            linha1(),
            Divider(
              color: Colors.black45,
            ),
            linha2()
          ],
        ),
      ),
    );
  }

  Widget linha2() {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            car.descricao,
            style: TextStyle(fontSize: 18),
          ),
          Text(
            " Curabitur vitae lectus vulputate, pellentesque risus sed, porttitor ligula. Sed vehicula sed turpis sit amet fermentum. Sed vehicula urna neque, a pretium orci venenatis quis. Quisque at sapien ac velit pellentesque placerat. Ut velit nunc, imperdiet quis commodo eu, finibus id nulla. Aenean vitae dapibus augue, non porttitor nulla. Donec porta massa sapien, eget pulvinar sapien suscipit in. Quisque sed cursus enim. Duis imperdiet leo id lacus laoreet, ac rhoncus velit molestie. Aenean malesuada ex sit amet pretium congue. Quisque id mi non magna placerat molestie vitae eu nisi. Donec sed ultricies sem, eget lobortis elit. Praesent turpis justo, auctor vitae posuere eget, gravida quis turpis. Sed non suscipit mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam malesuada dapibus gravida. ",
            style: TextStyle(fontSize: 16),
          ),
          Text(
            " Curabitur vitae lectus vulputate, pellentesque risus sed, porttitor ligula. Sed vehicula sed turpis sit amet fermentum. Sed vehicula urna neque, a pretium orci venenatis quis. Quisque at sapien ac velit pellentesque placerat. Ut velit nunc, imperdiet quis commodo eu, finibus id nulla. Aenean vitae dapibus augue, non porttitor nulla. Donec porta massa sapien, eget pulvinar sapien suscipit in. Quisque sed cursus enim. Duis imperdiet leo id lacus laoreet, ac rhoncus velit molestie. Aenean malesuada ex sit amet pretium congue. Quisque id mi non magna placerat molestie vitae eu nisi. Donec sed ultricies sem, eget lobortis elit. Praesent turpis justo, auctor vitae posuere eget, gravida quis turpis. Sed non suscipit mauris. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam malesuada dapibus gravida. ",
            style: TextStyle(fontSize: 16),
          )
        ],
      ),
    );
  }

  Row linha1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text(
              car.nome,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Text(
              car.tipo,
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 40,
              ),
              onPressed: _onClickFavorito,
            ),
            IconButton(
              icon: Icon(
                Icons.share,
                size: 40,
              ),
              onPressed: _onClickShare,
            )
          ],
        )
      ],
    );
  }

  void _onClickMapa() {}

  void _onClickVideo() {}

  _onClickMenu(String value) {
    switch (value) {
      case "Editar":
        print("Editar");
        break;
      case "Compartilhar":
        print("Compartilhar");
        break;
      case "Salvar":
        print("Salvar");
        break;
    }
  }

  _onClickFavorito() {}

  _onClickShare() {}
}
