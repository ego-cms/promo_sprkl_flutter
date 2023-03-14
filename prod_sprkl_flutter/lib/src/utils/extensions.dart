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
import 'package:sprkl_flutter/sprkl_flutter.dart';

extension ThemeExtensions on ThemeData {
  SprklColorScheme? colorScheme() {
    return extension<SprklColorScheme>();
  }

  SprklTextStyle? textStyle() {
    return extension<SprklTextStyle>();
  }
}

///[SprklImageSize] standard sizes
///[SprklImageSize.xl] = [SprklSizes.x36] = 72
///[SprklImageSize.l] = [SprklSizes.x32] = 64
///[SprklImageSize.m] = [SprklSizes.x28] = 56
///[SprklImageSize.s] = [SprklSizes.x24] = 48
///[SprklImageSize.xs] = [SprklSizes.x20] = 40
///[SprklImageSize.xxs] = [SprklSizes.x16] = 32
extension SprklImageSizeExtensions on SprklImageSize {
  double getValue() {
    switch (this) {
      case SprklImageSize.xl:
        return SprklSizes.x36;
      case SprklImageSize.l:
        return SprklSizes.x32;
      case SprklImageSize.m:
        return SprklSizes.x28;
      case SprklImageSize.s:
        return SprklSizes.x24;
      case SprklImageSize.xs:
        return SprklSizes.x20;
      case SprklImageSize.xxs:
        return SprklSizes.x16;
    }
  }
}

extension SprklStyleTabTypeExtensions on SprklStyleTabType {
  String toAssetsResource() {
    switch (this) {
      case SprklStyleTabType.one:
        return Resources.dice1;
      case SprklStyleTabType.two:
        return Resources.dice2;
      case SprklStyleTabType.three:
        return Resources.dice3;
      case SprklStyleTabType.four:
        return Resources.dice4;
      case SprklStyleTabType.five:
        return Resources.dice5;
    }
  }
}

extension SprklInputSizeExtensions on SprklInputSize {
  EdgeInsets toPadding() {
    switch (this) {
      case SprklInputSize.l:
        return const EdgeInsets.symmetric(
          horizontal: SprklSizes.x8,
          vertical: SprklSizes.x6,
        );
      case SprklInputSize.m:
        return const EdgeInsets.symmetric(
          horizontal: SprklSizes.x8,
          vertical: SprklSizes.x5,
        );
      case SprklInputSize.s:
        return const EdgeInsets.symmetric(
          horizontal: SprklSizes.x4,
          vertical: SprklSizes.x3,
        );
    }
  }
}
