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
