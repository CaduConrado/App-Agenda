import 'package:flutter/material.dart';

class ColorNivel {
  final Color level1 = Colors.yellow;
  final Color level2 = Colors.yellow.shade800;
  final Color level3 = Colors.orange.shade600;
  final Color level4 = Colors.orange.shade900;
  final Color level5 = Colors.red;

  var arrayColors = [
    Colors.yellow,
    Colors.yellow.shade800,
    Colors.orange.shade600,
    Colors.orange.shade900,
    Colors.red,
  ];

  Color textNivelColor(int count) {
    if (count > 4) {
      return arrayColors[4];
    }
    Color cor;
    cor = arrayColors[count];

    return cor;
  }
}
