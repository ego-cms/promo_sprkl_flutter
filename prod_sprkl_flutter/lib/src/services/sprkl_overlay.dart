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
