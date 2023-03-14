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
