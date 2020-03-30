import 'package:carros/api/carros_api.dart';
import 'package:carros/model/car.dart';
import 'package:carros/pages/car_page.dart';
import 'package:carros/utils/nav.dart';
import 'package:flutter/material.dart';

class CarListView extends StatefulWidget {
  String tipo;

  CarListView(this.tipo);

  @override
  _CarListViewState createState() => _CarListViewState();
}

class _CarListViewState extends State<CarListView>
    with AutomaticKeepAliveClientMixin<CarListView> {
  List<Car> listCarros;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    Future<List<Car>> futureCarros = CarrosApi.getCarros(widget.tipo);
    futureCarros.then((carros) {
      setState(() {
        listCarros = carros;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return _body();
  }

  Widget _body() {
    if (listCarros == null) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }
    return _listView(listCarros);
  }

  ListView _listView(List<Car> listCarros) {
    return ListView.builder(
        itemCount: listCarros != null ? listCarros.length : 0,
        itemBuilder: (BuildContext context, int index) {
          Car carro = listCarros[index];
          return Container(
            color: Colors.black12,
            padding: EdgeInsets.symmetric(),
            child: Container(
              padding: EdgeInsets.all(4),
              child: Card(
                child: Column(
                  children: <Widget>[
                    Image.network(
                      carro.urlFoto ??
                          "http://www.livroandroid.com.br/livro/carros/esportivos/McLAREN.png",
                      width: 250,
                    ),
                    Text(
                      carro.nome,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    ButtonBarTheme(
                      data: ButtonBarTheme.of(context),
                      child: ButtonBar(
                        children: <Widget>[
                          FlatButton(
                            onPressed: () {
                              push(context, CarPage(carro));
                            },
                            child: Text("Detalhes"),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text("Share"),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
