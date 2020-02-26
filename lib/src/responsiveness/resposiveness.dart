import 'package:flutter/material.dart';

double responsiveFont(BuildContext context, double value) {
  final double _magic = MediaQuery.of(context).size.width / 400;
  return _magic * value;
}

double responsiveHeight(BuildContext context, double value,
    {double designHeight}) {
  final double _designHeight = designHeight ?? 736;
  final double _height = MediaQuery.of(context).size.height;
  final double _magicNumber = value / _designHeight;
  return _magicNumber * _height;
}

double responsiveWidth(BuildContext context, double value,
    {double designWidth}) {
  final double _designWidth = designWidth ?? 414;
  final double _width = MediaQuery.of(context).size.width;
  final double _magicNumber = value / _designWidth;
  return _magicNumber * _width;
}

Size deviceSize(BuildContext context) => MediaQuery.of(context).size;
