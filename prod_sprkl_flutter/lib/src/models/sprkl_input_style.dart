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

class SprklInputStyle {
  final Color? normalStateColor;
  final Color? errorStateColor;
  final Color? succeedStateColor;
  final Color? disabledStateColor;
  final Color? normalTextColor;
  final Color? normalIconColor;
  final Color? hintTextColor;
  final Color? backgroundColor;
  final EdgeInsets? padding;

  SprklInputStyle({
    this.normalStateColor,
    this.errorStateColor,
    this.succeedStateColor,
    this.disabledStateColor,
    this.normalTextColor,
    this.normalIconColor,
    this.hintTextColor,
    this.backgroundColor,
    this.padding,
  });

  SprklInputStyle copyWith({
    Color? normalStateColor,
    Color? errorStateColor,
    Color? succeedStateColor,
    Color? disabledStateColor,
    Color? normalTextColor,
    Color? normalIconColor,
    Color? hintTextColor,
    Color? backgroundColor,
    EdgeInsets? padding,
  }) {
    return SprklInputStyle(
      normalStateColor: normalStateColor ?? this.normalStateColor,
      errorStateColor: errorStateColor ?? this.errorStateColor,
      succeedStateColor: succeedStateColor ?? this.succeedStateColor,
      disabledStateColor: disabledStateColor ?? this.disabledStateColor,
      normalTextColor: normalTextColor ?? this.normalTextColor,
      normalIconColor: normalIconColor ?? this.normalIconColor,
      hintTextColor: hintTextColor ?? this.hintTextColor,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
    );
  }
}
