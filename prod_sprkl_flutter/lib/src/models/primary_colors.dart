import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/models/color_palette.dart';

class PrimaryColors {
  final Color? primary;
  final ColorPalette? primaryPalette;

  final Color? accent;
  final ColorPalette? accentPalette;

  final Color? gradient;
  final ColorPalette? gradientPalette;

  PrimaryColors({
    required this.primary,
    required this.accent,
    required this.gradient,
    this.primaryPalette,
    this.accentPalette,
    this.gradientPalette,
  });
}
