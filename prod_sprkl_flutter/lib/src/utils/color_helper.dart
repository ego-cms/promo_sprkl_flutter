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
import 'package:material_color_utilities/material_color_utilities.dart';
import 'dart:math' as math;

import 'package:sprkl_flutter/src/models/color_palette.dart';

class ColorHelper {
  static final List<int> _commonTones = [];
  static final Map<int, int> _cache = {};
  static double? _hue;
  static double? _chroma;

  static List<int> get _asList =>
      _commonTones.map((int tone) => _getColorFromTone(tone)).toList();

  static int _getColorFromTone(int tone) {
    final chroma = (tone >= 90.0) ? math.min(_chroma!, 40.0) : _chroma!;

    return _cache.putIfAbsent(
        tone, () => Hct.from(_hue!, chroma, tone.toDouble()).toInt());
  }

  ///Generates 10 tonal colors
  ///First color in the list is the given [color]
  ///Tones seeks to white from given [color]
  static List<Color> getTonalColors(Color color) {
    _cache.clear();
    final Cam16 camColor = Cam16.fromInt(color.value);
    _hue = camColor.hue;
    _chroma = camColor.chroma;

    var step = (100 - camColor.j) / 11;
    _commonTones.clear();
    for (int i = 1; i <= 10; i++) {
      var tone = (camColor.j + (i * step)).toInt();
      if (tone == 100) {
        tone = 99;
      }
      _commonTones.add(tone);
    }
    return _asList.map((int e) => Color(e)).toList();
  }

  ///Generates the ColorPalette instance
  ///based on [getTonalColors] method results
  static ColorPalette generatePalette(Color color) {
    var colors = getTonalColors(color);
    return ColorPalette.fromList(colors);
  }
}
