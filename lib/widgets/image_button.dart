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

class ImageButton extends StatefulWidget {
  const ImageButton({
    super.key,
    this.backgroundColor,
    this.borderColor,
    this.borderWidth,
    this.borderRadius,
    this.padding,
    required this.image,
  });
  final Color? backgroundColor;
  final Color? borderColor;
  final double? borderWidth;
  final double? borderRadius;
  final EdgeInsets? padding;
  final Widget image;

  @override
  State<ImageButton> createState() => _ImageButtonState();
}

class _ImageButtonState extends State<ImageButton> {
  ThemeData get theme => Theme.of(context);
  SprklColorScheme get colors => theme.extension<SprklColorScheme>()!;
  SprklTextStyle get styles => theme.extension<SprklTextStyle>()!;

  Color get backgroundColor => widget.backgroundColor ?? Colors.transparent;
  Color get borderColor =>
      widget.borderColor ?? colors.neutralsColors!.neutralPalette!.c200;
  double get borderWidth => widget.borderWidth ?? 1;
  double get borderRadius => widget.borderRadius ?? 16;
  EdgeInsets get padding =>
      widget.padding ?? const EdgeInsets.symmetric(vertical: 12);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.transparent,
        child: Material(
          child: InkWell(
            borderRadius: BorderRadius.circular(borderRadius),
            onTap: () {
              print("tapped");
            },
            child: Container(
              padding: padding,
              decoration: BoxDecoration(
                  color: backgroundColor,
                  borderRadius: BorderRadius.circular(borderRadius),
                  border: Border.all(color: borderColor, width: borderWidth)),
              child: widget.image,
            ),
          ),
        ));
  }
}
