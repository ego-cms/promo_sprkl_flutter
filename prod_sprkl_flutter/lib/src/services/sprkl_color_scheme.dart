import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/models/neutrals_colors.dart';
import 'package:sprkl_flutter/src/models/primary_colors.dart';
import 'package:sprkl_flutter/src/models/semantic_colors.dart';
import 'package:sprkl_flutter/src/models/supporting_colors.dart';

///
///Theme extension to collect the colors and colors palettes of sprkl flutter
///
class SprklColorScheme extends ThemeExtension<SprklColorScheme> {
  final PrimaryColors? primaryColors;
  final NeutralsColors? neutralsColors;
  final SemanticColors? semanticColors;
  final SupportingColors? supportingColors;

  SprklColorScheme({
    required this.primaryColors,
    required this.neutralsColors,
    required this.semanticColors,
    required this.supportingColors,
  });

  @override
  ThemeExtension<SprklColorScheme> copyWith({
    PrimaryColors? primaryColors,
    NeutralsColors? neutralsColors,
    SemanticColors? semanticColors,
    SupportingColors? supportingColors,
  }) {
    return SprklColorScheme(
      primaryColors: primaryColors ?? this.primaryColors,
      neutralsColors: neutralsColors ?? this.neutralsColors,
      semanticColors: semanticColors ?? this.semanticColors,
      supportingColors: supportingColors ?? this.supportingColors,
    );
  }

  @override
  ThemeExtension<SprklColorScheme> lerp(
    ThemeExtension<SprklColorScheme>? other,
    double t,
  ) {
    if (other is! SprklColorScheme) {
      return this;
    }
    return SprklColorScheme(
      primaryColors: PrimaryColors(
        primary:
            Color.lerp(primaryColors?.primary, other.primaryColors?.primary, t),
        accent:
            Color.lerp(primaryColors?.accent, other.primaryColors?.accent, t),
        gradient: Color.lerp(
            primaryColors?.gradient, other.primaryColors?.gradient, t),
        primaryPalette: primaryColors?.primaryPalette,
        accentPalette: primaryColors?.accentPalette,
        gradientPalette: primaryColors?.gradientPalette,
      ),
      neutralsColors: NeutralsColors(
        white:
            Color.lerp(neutralsColors?.white, other.neutralsColors?.white, t),
        black:
            Color.lerp(neutralsColors?.black, other.neutralsColors?.black, t),
        neutral: Color.lerp(
            neutralsColors?.neutral, other.neutralsColors?.neutral, t),
        whitePalette: neutralsColors?.whitePalette,
        neutralPalette: neutralsColors?.neutralPalette,
      ),
      semanticColors: SemanticColors(
        error:
            Color.lerp(semanticColors?.error, other.semanticColors?.error, t),
        info: Color.lerp(semanticColors?.info, other.semanticColors?.info, t),
        success: Color.lerp(
            semanticColors?.success, other.semanticColors?.success, t),
        warning: Color.lerp(
            semanticColors?.warning, other.semanticColors?.warning, t),
        successPalette: semanticColors?.successPalette,
        errorPalette: semanticColors?.errorPalette,
        infoPalette: semanticColors?.infoPalette,
        warningPalette: semanticColors?.warningPalette,
      ),
      supportingColors: SupportingColors(
        cyan:
            Color.lerp(supportingColors?.cyan, other.supportingColors?.cyan, t),
        emerald: Color.lerp(
            supportingColors?.emerald, other.supportingColors?.emerald, t),
        fuchsia: Color.lerp(
            supportingColors?.fuchsia, other.supportingColors?.fuchsia, t),
        indigo: Color.lerp(
            supportingColors?.indigo, other.supportingColors?.indigo, t),
        lime:
            Color.lerp(supportingColors?.lime, other.supportingColors?.lime, t),
        pink:
            Color.lerp(supportingColors?.pink, other.supportingColors?.pink, t),
        purple: Color.lerp(
            supportingColors?.purple, other.supportingColors?.purple, t),
        sky: Color.lerp(supportingColors?.sky, other.supportingColors?.sky, t),
        teal:
            Color.lerp(supportingColors?.teal, other.supportingColors?.teal, t),
        violet: Color.lerp(
            supportingColors?.violet, other.supportingColors?.violet, t),
      ),
    );
  }
}
