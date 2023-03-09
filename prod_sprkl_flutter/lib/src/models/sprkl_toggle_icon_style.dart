import 'package:flutter/material.dart';

class SprklToggleIconStyle {
  final Color? backgroundActiveColor;
  final Color? iconActiveColor;
  final Color? borderActiveColor;
  final Color? backgroundInactiveColor;
  final Color? iconInactiveColor;
  final Color? borderInactiveColor;
  final Color? disabledColor;

  SprklToggleIconStyle({
    this.backgroundActiveColor,
    this.iconActiveColor,
    this.borderActiveColor,
    this.backgroundInactiveColor,
    this.iconInactiveColor,
    this.borderInactiveColor,
    this.disabledColor,
  });

  SprklToggleIconStyle copyWith({
    Color? backgroundActiveColor,
    Color? iconActiveColor,
    Color? borderActiveColor,
    Color? backgroundInactiveColor,
    Color? iconInactiveColor,
    Color? borderInactiveColor,
    Color? disabledColor,
  }) {
    return SprklToggleIconStyle(
      backgroundActiveColor:
          backgroundActiveColor ?? this.backgroundActiveColor,
      iconActiveColor: iconActiveColor ?? this.iconActiveColor,
      borderActiveColor: borderActiveColor ?? this.borderActiveColor,
      backgroundInactiveColor:
          backgroundInactiveColor ?? this.backgroundInactiveColor,
      iconInactiveColor: iconInactiveColor ?? this.iconInactiveColor,
      borderInactiveColor: borderInactiveColor ?? this.borderInactiveColor,
      disabledColor: disabledColor ?? this.disabledColor,
    );
  }
}
