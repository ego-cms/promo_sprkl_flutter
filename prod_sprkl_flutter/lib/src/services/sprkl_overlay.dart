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
import 'package:sprkl_flutter/src/widgets/drop_down_overlay.dart';

OverlayEntry? _dropDown;

Future<void> togglePopupVisibility(
  GlobalKey<NavigatorState> navigatorKey,
  bool isVisible, {
  required Widget? child,
}) async {
  if (isVisible) {
    if (_dropDown != null) {
      _dropDown?.remove();
    }
    _dropDown = DropDownOverlay.build(navigatorKey, child!);
    navigatorKey.currentState!.overlay?.insert(_dropDown!);
  } else {
    _dropDown?.remove();
    _dropDown = null;
  }
}
