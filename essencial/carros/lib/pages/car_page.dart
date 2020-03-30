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
      ),
      body: Container(
        child: Center(
          child: Image.network(car.urlFoto),
        ),
      ),
    );
  }
}
