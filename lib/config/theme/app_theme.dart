import 'package:flutter/material.dart';

//Quiero declarar un color con rgb
const Color _customColor = Color.fromARGB(255, 23, 178, 93);

const List<Color> _colorThemes = <Color>[_customColor, Colors.black54];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor < _colorThemes.length,
            'Colors must be between 0 and ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
    );
  }
}
