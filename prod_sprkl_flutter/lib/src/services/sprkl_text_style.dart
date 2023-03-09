import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/utils/resources.dart';

///
///Theme extension to collect the typography of sprkl flutter
///
class SprklTextStyle extends ThemeExtension<SprklTextStyle> {
  final Color? textColor;
  final Color? linkColor;

  late TextStyle? headerXL;
  late TextStyle? headerL;
  late TextStyle? headerM;
  late TextStyle? headerS;
  late TextStyle? headerXS;
  late TextStyle? headerXXS;

  late TextStyle? bodyL;
  late TextStyle? bodyM;
  late TextStyle? bodyS;

  late TextStyle? labelM;
  late TextStyle? labelS;

  late TextStyle? quote;
  late TextStyle? link;
  late TextStyle? overline;
  late TextStyle? caption;

  SprklTextStyle({
    required this.textColor,
    required this.linkColor,
  }) {
    headerXL = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontWeight: FontWeight.bold,
      fontSize: 56,
      letterSpacing: -0.4,
      height: 1.1,
      color: textColor,
    );
    headerL = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontWeight: FontWeight.bold,
      fontSize: 48,
      letterSpacing: -0.4,
      height: 1.1,
      color: textColor,
    );
    headerM = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontSize: 32,
      height: 1.2,
      letterSpacing: -0.4,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
    headerS = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontSize: 28,
      height: 1.2,
      letterSpacing: -0.4,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
    headerXS = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontSize: 24,
      height: 1.2,
      letterSpacing: -0.24,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
    headerXXS = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontSize: 20,
      height: 1.2,
      letterSpacing: -0.24,
      fontWeight: FontWeight.bold,
      color: textColor,
    );

    bodyL = TextStyle(
      fontFamily: Fonts.inter,
      fontSize: 20,
      height: 1.2,
      letterSpacing: -0.24,
      fontWeight: FontWeight.w400,
      color: textColor,
    );
    bodyM = TextStyle(
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 16,
      height: 1.5,
      letterSpacing: -0.24,
      color: textColor,
    );
    bodyS = TextStyle(
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w400,
      fontSize: 14,
      height: 1.5,
      letterSpacing: 0,
      color: textColor,
    );

    labelM = TextStyle(
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.5,
      letterSpacing: -0.24,
      color: textColor,
    );
    labelS = TextStyle(
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.5,
      letterSpacing: 0,
      color: textColor,
    );

    quote = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontSize: 32,
      height: 1.2,
      letterSpacing: -0.4,
      fontWeight: FontWeight.bold,
      color: textColor,
    );
    link = TextStyle(
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 16,
      height: 1.3,
      letterSpacing: -0.24,
      color: linkColor,
      decoration: TextDecoration.underline,
    );
    overline = TextStyle(
      fontFamily: Fonts.iBMPlexSans,
      fontWeight: FontWeight.bold,
      fontSize: 14,
      height: 1.3,
      letterSpacing: 1,
      color: textColor,
    );
    caption = TextStyle(
      fontFamily: Fonts.inter,
      fontWeight: FontWeight.w500,
      fontSize: 14,
      height: 1.143,
      letterSpacing: -0.24,
      color: textColor,
    );
  }

  @override
  ThemeExtension<SprklTextStyle> copyWith({
    Color? textColor,
    Color? linkColor,
  }) {
    return SprklTextStyle(
      textColor: textColor ?? this.textColor,
      linkColor: linkColor ?? this.linkColor,
    );
  }

  @override
  ThemeExtension<SprklTextStyle> lerp(
    ThemeExtension<SprklTextStyle>? other,
    double t,
  ) {
    if (other is! SprklTextStyle) {
      return this;
    }
    return SprklTextStyle(
        textColor: Color.lerp(textColor, other.textColor, t),
        linkColor: Color.lerp(linkColor, other.linkColor, t));
  }
}
