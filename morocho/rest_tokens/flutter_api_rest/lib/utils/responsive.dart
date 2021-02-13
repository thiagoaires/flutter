import 'dart:math' as math;
import 'package:flutter/material.dart';

class Responsive {
  double _width, _height, _diagonal;

  static Responsive of(BuildContext context) => Responsive(context);

  Responsive(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    this._width = size.width;
    this._height = size.height;
    this._diagonal = math.sqrt(_height * _height + _width * _width);
  }

  double get width => this._width;
  double get height => this._height;
  double get diagonal => this._diagonal;

  double wp(double percent) => this._width * percent / 100;
  double hp(double percent) => this._height * percent / 100;
  double dp(double percent) => this._diagonal * percent / 100;
}
