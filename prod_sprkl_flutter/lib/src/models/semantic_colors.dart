/* ******************************************************** */
/* 2023 © TheSprkl for Flutter PROMO (www.thesprkl.io)      */
/* is a proprietary product developed by                    */
/* EGO Creative Innovations Limited (www.ego-cms.com)       */
/* This is a reduced demo version of TheSprkl, the rights   */
/* and terms of use of which are governed by a separate     */
/* commercial license.                                      */
/*                                                          */
/* This promo version is fully functional but contains a    */
/* limited number of items.                                 */
/*                                                          */
/* EULA https://www.thesprkl.io/legal/eula                  */
/* Support https://www.thesprkl.io/contact-us               */
/* Discord https://discord.gg/3qjXP9jCra                    */
/*                                                          */
/* ******************************************************** */

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
