import 'package:flutter/material.dart';
import 'package:sprkl_flutter/src/services/sprkl_overlay.dart';

class DropDownOverlay {
  static OverlayEntry build(
    GlobalKey<NavigatorState> navigatorKey,
    Widget child,
  ) {
    const double containerHeight = 76;
    const double containerRightPadding = 86;
    var height = MediaQuery.of(navigatorKey.currentContext!).size.height;
    var bottomPadding = WidgetsBinding.instance.window.viewInsets.bottom;
    var bottomPosition = height - (bottomPadding == 0 ? height : bottomPadding);
    return OverlayEntry(
      builder: (builder) {
        return Stack(
          children: [
            Positioned.fill(
              child: GestureDetector(
                onTap: () async {
                  await togglePopupVisibility(navigatorKey, false, child: null);
                },
              ),
            ),
            Positioned(
              right: containerRightPadding,
              bottom: bottomPosition + containerHeight,
              child: child,
            ),
          ],
        );
      },
    );
  }
}
