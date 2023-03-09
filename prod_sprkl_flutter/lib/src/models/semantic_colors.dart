import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/models/color_palette.dart';

class SemanticColors {
  final Color? error;
  final ColorPalette? errorPalette;
  final Color? warning;
  final ColorPalette? warningPalette;
  final Color? success;
  final ColorPalette? successPalette;
  final Color? info;
  final ColorPalette? infoPalette;

  SemanticColors({
    required this.error,
    this.errorPalette,
    required this.warning,
    this.warningPalette,
    required this.success,
    this.successPalette,
    required this.info,
    this.infoPalette,
  });
}
