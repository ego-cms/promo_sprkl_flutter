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

abstract class SprklStepperModel {}

class SprklStepperModelLine extends SprklStepperModel {
  final String title;
  final String subTitle;

  SprklStepperModelLine({required this.title, required this.subTitle});
}

class SprklStepperModelIcon extends SprklStepperModel {
  final IconData iconData;

  SprklStepperModelIcon(this.iconData);
}

class SprklStepperModelCustom extends SprklStepperModel {
  final Widget child;

  SprklStepperModelCustom(this.child);
}

class SprklStepperModelText extends SprklStepperModel {
  final String text;

  SprklStepperModelText(this.text);
}
