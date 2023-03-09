import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/models/color_palette.dart';
import 'package:sprkl_flutter/src/models/color_palette2.dart';
import 'package:sprkl_flutter/src/models/neutrals_colors.dart';
import 'package:sprkl_flutter/src/models/primary_colors.dart';
import 'package:sprkl_flutter/src/models/semantic_colors.dart';
import 'package:sprkl_flutter/src/models/supporting_colors.dart';
import 'package:sprkl_flutter/src/services/sprkl_color_scheme.dart';
import 'package:sprkl_flutter/src/services/sprkl_text_style.dart';
import 'package:sprkl_flutter/src/utils/constants.dart';
import 'package:sprkl_flutter/src/utils/resources.dart';

///
///The service with provides the theme setup and work with it
///
class ThemeService {
  final Color primaryColor;
  final ColorPalette primaryPalette;

  final Color accentColor;
  final Color gradientColor;

  final Color errorColor;
  final ColorPalette errorPalette;
  final Color warningColor;
  final ColorPalette warningPalette;
  final Color infoColor;
  final ColorPalette infoPalette;
  final Color successColor;
  final ColorPalette successPalette;

  final Color blackColor;
  final Color neutralColor;
  final ColorPalette neutralPalette;

  final Color whiteColor;
  final ColorPalette2 whitePalette;

  final Color limeColor;
  final Color emeraldColor;
  final Color tealColor;
  final Color cyanColor;
  final Color skyColor;
  final Color indigoColor;
  final Color violetColor;
  final Color purpleColor;
  final Color fuchsiaColor;
  final Color pinkColor;

  ThemeService._privateConstructor({
    required this.primaryColor,
    required this.primaryPalette,
    required this.accentColor,
    required this.gradientColor,
    required this.errorColor,
    required this.warningColor,
    required this.infoColor,
    required this.successColor,
    required this.errorPalette,
    required this.warningPalette,
    required this.infoPalette,
    required this.successPalette,
    required this.blackColor,
    required this.whiteColor,
    required this.neutralColor,
    required this.neutralPalette,
    required this.whitePalette,
    required this.limeColor,
    required this.emeraldColor,
    required this.tealColor,
    required this.cyanColor,
    required this.skyColor,
    required this.indigoColor,
    required this.violetColor,
    required this.purpleColor,
    required this.fuchsiaColor,
    required this.pinkColor,
  });

  ///
  ///Theme service constructor with optional color fields
  ///All null value colors will be set with default value
  ///
  factory ThemeService.builder({
    Color? primaryColor,
    ColorPalette? primaryPalette,
    Color? accentColor,
    Color? gradientColor,
    Color? errorColor,
    Color? warningColor,
    Color? infoColor,
    Color? successColor,
    ColorPalette? errorPalette,
    ColorPalette? warningPalette,
    ColorPalette? infoPalette,
    ColorPalette? successPalette,
    Color? blackColor,
    Color? whiteColor,
    Color? neutralColor,
    ColorPalette? neutralPalette,
    ColorPalette2? whitePalette,
    Color? limeColor,
    Color? emeraldColor,
    Color? tealColor,
    Color? cyanColor,
    Color? skyColor,
    Color? indigoColor,
    Color? violetColor,
    Color? purpleColor,
    Color? fuchsiaColor,
    Color? pinkColor,
  }) {
    return ThemeService._privateConstructor(
      primaryColor: primaryColor ?? Constants.primaryColor,
      primaryPalette: primaryPalette ??
          ColorPalette(
            c900: Constants.primaryColor900,
            c800: Constants.primaryColor800,
            c700: Constants.primaryColor700,
            c600: Constants.primaryColor600,
            c500: Constants.primaryColor500,
            c400: Constants.primaryColor400,
            c300: Constants.primaryColor300,
            c200: Constants.primaryColor200,
            c100: Constants.primaryColor100,
            c50: Constants.primaryColor50,
          ),
      accentColor: accentColor ?? Constants.accentColor,
      gradientColor: gradientColor ?? Constants.gradientColor,
      errorColor: errorColor ?? Constants.errorColor,
      warningColor: warningColor ?? Constants.warningColor,
      successColor: successColor ?? Constants.successColor,
      infoColor: infoColor ?? Constants.infoColor,
      errorPalette: errorPalette ??
          ColorPalette(
            c900: Constants.errorColor900,
            c800: Constants.errorColor800,
            c700: Constants.errorColor700,
            c600: Constants.errorColor600,
            c500: Constants.errorColor500,
            c400: Constants.errorColor400,
            c300: Constants.errorColor300,
            c200: Constants.errorColor200,
            c100: Constants.errorColor100,
            c50: Constants.errorColor50,
          ),
      infoPalette: infoPalette ??
          ColorPalette(
            c900: Constants.infoColor900,
            c800: Constants.infoColor800,
            c700: Constants.infoColor700,
            c600: Constants.infoColor600,
            c500: Constants.infoColor500,
            c400: Constants.infoColor400,
            c300: Constants.infoColor300,
            c200: Constants.infoColor200,
            c100: Constants.infoColor100,
            c50: Constants.infoColor50,
          ),
      warningPalette: warningPalette ??
          ColorPalette(
            c900: Constants.warningColor900,
            c800: Constants.warningColor800,
            c700: Constants.warningColor700,
            c600: Constants.warningColor600,
            c500: Constants.warningColor500,
            c400: Constants.warningColor400,
            c300: Constants.warningColor300,
            c200: Constants.warningColor200,
            c100: Constants.warningColor100,
            c50: Constants.warningColor50,
          ),
      successPalette: successPalette ??
          ColorPalette(
            c900: Constants.successColor900,
            c800: Constants.successColor800,
            c700: Constants.successColor700,
            c600: Constants.successColor600,
            c500: Constants.successColor500,
            c400: Constants.successColor400,
            c300: Constants.successColor300,
            c200: Constants.successColor200,
            c100: Constants.successColor100,
            c50: Constants.successColor50,
          ),
      blackColor: blackColor ?? Constants.blackColor,
      neutralColor: neutralColor ?? Constants.blackColor,
      neutralPalette: neutralPalette ??
          ColorPalette(
            c900: Constants.neutralColor900,
            c800: Constants.neutralColor800,
            c700: Constants.neutralColor700,
            c600: Constants.neutralColor600,
            c500: Constants.neutralColor500,
            c400: Constants.neutralColor400,
            c300: Constants.neutralColor300,
            c200: Constants.neutralColor200,
            c100: Constants.neutralColor100,
            c50: Constants.neutralColor50,
          ),
      whiteColor: whiteColor ?? Constants.whiteColor,
      whitePalette: whitePalette ??
          ColorPalette2(
            c8: Constants.whiteColor8,
            c16: Constants.whiteColor16,
            c24: Constants.whiteColor24,
            c32: Constants.whiteColor32,
            c40: Constants.whiteColor40,
            c48: Constants.whiteColor48,
            c56: Constants.whiteColor56,
            c64: Constants.whiteColor64,
            c72: Constants.whiteColor72,
            c80: Constants.whiteColor80,
            c88: Constants.whiteColor88,
            c100: Constants.whiteColor100,
          ),
      cyanColor: cyanColor ?? Constants.cyanColor,
      emeraldColor: emeraldColor ?? Constants.emeraldColor,
      fuchsiaColor: fuchsiaColor ?? Constants.fuchsiaColor,
      indigoColor: indigoColor ?? Constants.indigoColor,
      limeColor: limeColor ?? Constants.limeColor,
      pinkColor: pinkColor ?? Constants.pinkColor,
      purpleColor: purpleColor ?? Constants.purpleColor,
      skyColor: skyColor ?? Constants.skyColor,
      tealColor: tealColor ?? Constants.tealColor,
      violetColor: violetColor ?? Constants.violetColor,
    );
  }

  ///
  ///Returned [ThemeData] class instance with configured extensions
  ///Theme extensions contains sprkl colors, colors palette and typography
  ///
  ThemeData get theme {
    return ThemeData(
      extensions: <ThemeExtension<dynamic>>[
        SprklColorScheme(
            primaryColors: PrimaryColors(
              primary: primaryColor,
              primaryPalette: primaryPalette,
              accent: accentColor,
              gradient: gradientColor,
            ),
            neutralsColors: NeutralsColors(
              white: whiteColor,
              whitePalette: whitePalette,
              neutral: neutralColor,
              black: blackColor,
              neutralPalette: neutralPalette,
            ),
            semanticColors: SemanticColors(
              error: errorColor,
              warning: warningColor,
              success: successColor,
              info: infoColor,
              infoPalette: infoPalette,
              warningPalette: warningPalette,
              successPalette: successPalette,
              errorPalette: errorPalette,
            ),
            supportingColors: SupportingColors(
              lime: limeColor,
              emerald: emeraldColor,
              teal: tealColor,
              cyan: cyanColor,
              sky: skyColor,
              indigo: indigoColor,
              violet: violetColor,
              purple: purpleColor,
              fuchsia: fuchsiaColor,
              pink: pinkColor,
            )),
        SprklTextStyle(
          textColor: blackColor,
          linkColor: skyColor,
        ),
      ],
      primaryColor: primaryColor,
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontSize: 16,
          fontFamily: Fonts.inter,
          color: gradientColor,
        ),
      ),
    );
  }
}
