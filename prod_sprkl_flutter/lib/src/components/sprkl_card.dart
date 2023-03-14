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

///
///Designed by sprkl custom Card component
///
class SprklCard extends StatefulWidget {
  final SprklAvatar? avatar;
  final Widget? child;
  final double? width;
  final double? height;
  final String text;
  final TextStyle? textStyle;
  final Color? textColor;
  final int? maxLines;
  final double? borderRadius;
  final Color? borderColor;
  final Color? backgroundColor;

  const SprklCard._private({
    required this.text,
    this.borderRadius,
    this.textStyle,
    this.textColor,
    this.borderColor,
    this.avatar,
    this.child,
    this.width,
    this.height,
    this.backgroundColor,
    this.maxLines,
  });

  ///
  ///The base Card constructor which allows to configure component
  ///with all available properties and Avatar as left top widget
  ///
  ///[text] text on the bottom of the card
  ///[avatar] left top [SprklAvatar] widget
  ///[borderRadius] border radius, by default is 10
  ///[textStyle] text style, by default [styles.caption]
  ///[textColor] text color, by default [neutralsColors.white]
  ///[borderColor] color of the border
  ///[width] card width, by default is 99
  ///[height] card height, by default is 92
  ///[backgroundColor] card background color, by default [neutralsColors.whitePalette.c8]
  ///[maxLines] max text lines
  ///
  factory SprklCard.avatar({
    required String text,
    required SprklAvatar avatar,
    double? borderRadius,
    TextStyle? textStyle,
    Color? textColor,
    Color? borderColor,
    double? width,
    double? height,
    Color? backgroundColor,
    int? maxLines,
  }) {
    return SprklCard._private(
      text: text,
      borderRadius: borderRadius,
      textStyle: textStyle,
      textColor: textColor,
      borderColor: borderColor,
      avatar: avatar,
      width: width,
      height: height,
      backgroundColor: backgroundColor,
      maxLines: maxLines,
    );
  }

  ///
  ///The base Card constructor which allows to configure component
  ///with all available properties and Avatar as left top widget
  ///
  ///[text] text on the bottom of the card
  ///[child] left top widget with custom type
  ///[borderRadius] border radius, by default is 10
  ///[textStyle] text style, by default [styles.caption]
  ///[textColor] text color, by default [neutralsColors.white]
  ///[borderColor] color of the border
  ///[width] card width, by default is 99
  ///[height] card height, by default is 92
  ///[backgroundColor] card background color, by default [neutralsColors.whitePalette.c8]
  ///[maxLines] max text lines
  ///
  factory SprklCard.child({
    required String text,
    required Widget child,
    double? borderRadius,
    TextStyle? textStyle,
    Color? textColor,
    Color? borderColor,
    double? width,
    double? height,
    Color? backgroundColor,
    int? maxLines,
  }) {
    return SprklCard._private(
      text: text,
      borderRadius: borderRadius,
      textStyle: textStyle,
      textColor: textColor,
      borderColor: borderColor,
      width: width,
      height: height,
      backgroundColor: backgroundColor,
      maxLines: maxLines,
      child: child,
    );
  }

  @override
  State<SprklCard> createState() => _SprklCardState();
}

class _SprklCardState extends State<SprklCard> {
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  SprklTextStyle get styles => Theme.of(context).extension<SprklTextStyle>()!;

  TextStyle get textStyle => widget.textStyle ?? styles.caption!;
  Color get backgroundColor =>
      widget.backgroundColor ?? colors.neutralsColors!.whitePalette!.c8;
  Color get textColor => widget.textColor ?? colors.neutralsColors!.white!;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: widget.height ?? 99,
          width: widget.width ?? 92,
          padding: const EdgeInsets.all(SprklSizes.x4),
          decoration: BoxDecoration(
            color: backgroundColor,
            shape: BoxShape.rectangle,
            border: Border.all(
                color: widget.borderColor ?? Colors.transparent,
                width: widget.borderColor == null ? 0 : 2),
            borderRadius:
                BorderRadius.circular(widget.borderRadius ?? SprklSizes.x4),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (widget.child != null) Wrap(children: [widget.child!]),
              if (widget.avatar != null) widget.avatar!,
              const SizedBox(height: 8),
              Text(
                widget.text,
                maxLines: widget.maxLines,
                style: textStyle.copyWith(color: textColor),
                overflow: TextOverflow.ellipsis,
              )
            ],
          ),
        ),
      ],
    );
  }
}
