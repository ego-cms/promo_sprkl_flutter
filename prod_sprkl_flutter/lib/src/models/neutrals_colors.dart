import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/models/color_palette.dart';
import 'package:sprkl_flutter/src/models/color_palette2.dart';

class NeutralsColors {
  final Color? white;
  final ColorPalette2? whitePalette;
  final Color? black;
  final Color? neutral;
  final ColorPalette? neutralPalette;

  ///Sprkl design based model to collect neutral colors
  NeutralsColors({
    required this.white,
    this.whitePalette,
    required this.black,
    required this.neutral,
    this.neutralPalette,
  });
}
