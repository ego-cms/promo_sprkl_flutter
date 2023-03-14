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
import 'package:sprkl_flutter/src/models/sprkl_enum.dart';
import 'package:sprkl_flutter/src/models/sprkl_stepper_item_style.dart';
import 'package:sprkl_flutter/src/services/sprkl_color_scheme.dart';
import 'package:sprkl_flutter/src/utils/constants.dart';

///
///Designed by sprkl custom Snackbar component item
///
class SprklStepperItem extends StatefulWidget {
  const SprklStepperItem._private({
    required this.type,
    required this.activeStyle,
    required this.futureStyle,
    required this.completedStyle,
    this.child,
    this.iconData,
    this.size,
    required this.orientation,
    this.iconSize,
    required this.state,
    this.text,
  });

  factory SprklStepperItem.custom({
    required SprklStepperItemStyle activeStyle,
    required SprklStepperItemStyle futureStyle,
    required SprklStepperItemStyle completedStyle,
    required Widget child,
    required SprklStepperState state,
    double? size,
  }) {
    return SprklStepperItem._private(
      type: SprklStepperItemType.rounded,
      activeStyle: activeStyle,
      completedStyle: completedStyle,
      futureStyle: futureStyle,
      size: size,
      orientation: Orientation.portrait,
      state: state,
      child: child,
    );
  }

  factory SprklStepperItem.icon({
    required SprklStepperItemStyle activeStyle,
    required SprklStepperItemStyle futureStyle,
    required SprklStepperItemStyle completedStyle,
    required IconData iconData,
    required SprklStepperState state,
    double? size,
    double? iconSize,
  }) {
    return SprklStepperItem._private(
      type: SprklStepperItemType.rounded,
      activeStyle: activeStyle,
      completedStyle: completedStyle,
      futureStyle: futureStyle,
      size: size,
      iconSize: iconSize,
      iconData: iconData,
      orientation: Orientation.landscape,
      state: state,
    );
  }

  factory SprklStepperItem.text({
    required SprklStepperItemStyle activeStyle,
    required SprklStepperItemStyle futureStyle,
    required SprklStepperItemStyle completedStyle,
    required String text,
    required SprklStepperState state,
    double? size,
  }) {
    return SprklStepperItem._private(
      type: SprklStepperItemType.rounded,
      activeStyle: activeStyle,
      completedStyle: completedStyle,
      futureStyle: futureStyle,
      size: size,
      orientation: Orientation.landscape,
      state: state,
      text: text,
    );
  }

  factory SprklStepperItem.line({
    required SprklStepperItemStyle activeStyle,
    required SprklStepperItemStyle futureStyle,
    required SprklStepperItemStyle completedStyle,
    required SprklStepperState state,
    double? size,
    Orientation orientation = Orientation.portrait,
  }) {
    return SprklStepperItem._private(
      type: SprklStepperItemType.line,
      activeStyle: activeStyle,
      completedStyle: completedStyle,
      futureStyle: futureStyle,
      size: size,
      orientation: orientation,
      state: state,
    );
  }

  final SprklStepperItemType type;
  final SprklStepperItemStyle activeStyle;
  final SprklStepperItemStyle futureStyle;
  final SprklStepperItemStyle completedStyle;
  final Widget? child;
  final IconData? iconData;
  final String? text;
  final double? size;
  final double? iconSize;
  final Orientation orientation;
  final SprklStepperState state;

  @override
  State<SprklStepperItem> createState() => _SprklStepperItemState();
}

class _SprklStepperItemState extends State<SprklStepperItem> {
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  double get size => widget.size ?? SprklSizes.x20;

  SprklStepperItemStyle get style {
    switch (widget.state) {
      case SprklStepperState.completed:
        return widget.completedStyle;
      case SprklStepperState.future:
        return widget.futureStyle;
      case SprklStepperState.active:
        return widget.activeStyle;
    }
  }

  Widget get child {
    switch (widget.type) {
      case SprklStepperItemType.rounded:
        return SizedBox(
            width: size,
            height: size,
            child: ClipOval(
              child: Container(
                width: size,
                height: size,
                decoration: BoxDecoration(
                  color: style.primaryColor,
                  border: Border.all(color: style.borderColor, width: 2),
                  borderRadius: BorderRadius.circular(size / 2),
                ),
                child: Center(
                  child: widget.child ??
                      (widget.iconData != null
                          ? Icon(
                              widget.iconData!,
                              color: style.iconColor,
                              size: widget.iconSize ?? SprklSizes.x12,
                            )
                          : Text(widget.text!,
                              style: TextStyle(
                                color: style.iconColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ))),
                ),
              ),
            ));
      case SprklStepperItemType.line:
        return Container(
          height: widget.orientation == Orientation.portrait ? size : size / 10,
          width: widget.orientation == Orientation.portrait ? size / 10 : size,
          color: widget.state == SprklStepperState.active
              ? style.primaryColor
              : style.borderColor,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return child;
  }
}
