import 'package:flutter/material.dart';

///Colors palette model with 10 colors length
///Used for collect tone based colors
class ColorPalette {
  final Color c900;
  final Color c800;
  final Color c700;
  final Color c600;
  final Color c500;
  final Color c400;
  final Color c300;
  final Color c200;
  final Color c100;
  final Color c50;

  ColorPalette({
    required this.c900,
    required this.c800,
    required this.c700,
    required this.c600,
    required this.c500,
    required this.c400,
    required this.c300,
    required this.c200,
    required this.c100,
    required this.c50,
  });

  ///Returns filled ColorPalette model by the colors from the list
  ///First item is the darkest in the result model
  ///Required length of [colors] list is 10
  factory ColorPalette.fromList(List<Color> colors) {
    assert(colors.length == 10);
    return ColorPalette(
      c900: colors[0],
      c800: colors[1],
      c700: colors[2],
      c600: colors[3],
      c500: colors[4],
      c400: colors[5],
      c300: colors[6],
      c200: colors[7],
      c100: colors[8],
      c50: colors[9],
    );
  }
}
