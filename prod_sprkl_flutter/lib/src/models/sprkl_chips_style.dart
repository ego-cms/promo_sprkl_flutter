import 'package:flutter/material.dart';

class SprklChipsStyle {
  final Color? primary;
  final Color? iconColor;
  final Color? textColor;
  final TextStyle? textStyle;

  SprklChipsStyle({
    this.primary,
    this.iconColor,
    this.textColor,
    this.textStyle,
  });

  SprklChipsStyle copyWith({
    Color? primary,
    Color? iconColor,
    Color? textColor,
    TextStyle? textStyle,
  }) {
    return SprklChipsStyle(
      primary: primary ?? this.primary,
      iconColor: iconColor ?? this.iconColor,
      textColor: textColor ?? this.textColor,
      textStyle: textStyle ?? this.textStyle,
    );
  }
}
