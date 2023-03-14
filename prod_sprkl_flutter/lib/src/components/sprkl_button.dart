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
///Designed by sprkl custom Button component
///
class SprklButton extends StatefulWidget {
  final String text;
  final Widget? suffix;
  final Widget? prefix;
  final Color? primaryColor;
  final Color? backgroundColor;
  final TextStyle? textStyle;
  final double? iconSpacer;
  final EdgeInsets? padding;
  final Function()? onPressed;
  final SprklButtonSize size;
  final double? borderRadius;
  final Color? borderColor;
  final bool hasBorder;
  final bool expanded;
  final double? elevation;

  ///
  ///The base Button constructor which allows to configure component
  ///with all available properties
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primary]
  ///[textStyle] text style, default [textStyle] value used depends of [size]
  ///if [size] is [SprklButtonSize.s] so [textStyle] = [labelS]
  ///else [textStyle] = [labelM]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is depended of [size]
  ///
  ///if [size] == [SprklButtonSize.xl] then [iconSpacer] = [SprklSizes.x6] = 12
  ///if [size] == [SprklButtonSize.l] then [iconSpacer] = [SprklSizes.x6] = 12
  ///if [size] == [SprklButtonSize.m] then [iconSpacer] = [SprklSizes.x4] = 8
  ///if [size] == [SprklButtonSize.s] then [iconSpacer] = [SprklSizes.x4] = 8
  ///
  ///[padding] content padding
  ///default [padding] value is depended of [size]
  ///
  ///if [size] == [SprklButtonSize.xl] then [padding] =
  ///[SprklButtonPaddings.xl] = horizontal: 24, vertical: 16
  ///if [size] == [SprklButtonSize.l] then [padding] =
  ///[SprklButtonPaddings.l] = horizontal: 20, vertical: 12
  ///if [size] == [SprklButtonSize.m] then [padding] =
  ///[SprklButtonPaddings.m] = horizontal: 16, vertical: 8
  ///if [size] == [SprklButtonSize.s] then [padding] =
  ///[SprklButtonPaddings.s] = horizontal: 12, vertical: 6
  ///
  ///[onPressed] on pressed function
  ///[size] components standard size which predeterminate default values
  ///for [textStyle] and [iconSpacer] and [padding]
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 12
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [hasBorder] flag to control border visibility
  /// border line width is constant 1
  /// [elevation] button elevation
  ///
  const SprklButton({
    Key? key,
    required this.text,
    this.suffix,
    this.prefix,
    this.primaryColor,
    this.backgroundColor,
    this.textStyle,
    this.iconSpacer,
    this.padding,
    this.onPressed,
    this.size = SprklButtonSize.xl,
    this.borderRadius,
    this.borderColor,
    this.hasBorder = false,
    this.expanded = false,
    this.elevation,
  }) : super(key: key);

  ///
  ///The size predeterminate Button constructor
  ///with predestinated [size] value = [SprklButtonSize.xl]
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primary]
  ///[textStyle] text style, default [textStyle] value is [labelM]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is [SprklSizes.x6] = 12
  ///
  ///[padding] content padding
  ///default [padding] value is
  ///[SprklButtonPaddings.xl] = horizontal: 24, vertical: 16
  ///
  ///[onPressed] on pressed function
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 12
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [hasBorder] flag to control border visibility
  /// border line width is constant 1
  /// [elevation] button elevation
  ///
  factory SprklButton.xl({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    Color? backgroundColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    Color? borderColor,
    bool hasBorder = false,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      onPressed: onPressed,
      size: SprklButtonSize.xl,
      borderRadius: borderRadius,
      borderColor: borderColor,
      hasBorder: hasBorder,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  ///
  ///The expanded width Button constructor
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primary]
  ///[textStyle] text style, default [textStyle] value is [labelM]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is [SprklSizes.x6] = 12
  ///
  ///[onPressed] on pressed function
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 12
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [hasBorder] flag to control border visibility
  /// border line width is constant 1
  /// [elevation] button elevation
  ///
  factory SprklButton.expanded({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    Color? backgroundColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    Color? borderColor,
    EdgeInsets? padding,
    bool hasBorder = false,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      onPressed: onPressed,
      borderRadius: borderRadius,
      borderColor: borderColor,
      hasBorder: hasBorder,
      expanded: true,
      padding: padding,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  ///
  ///The size predeterminate Button constructor
  ///with predestinated [size] value = [SprklButtonSize.l]
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primary]
  ///[textStyle] text style, default [textStyle] value is [labelM]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is [SprklSizes.x6] = 12
  ///
  ///[padding] content padding
  ///default [padding] value is
  ///[SprklButtonPaddings.xl] = horizontal: 20, vertical: 12
  ///
  ///[onPressed] on pressed function
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 12
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [hasBorder] flag to control border visibility
  /// border line width is constant 1
  /// [elevation] button elevation
  ///
  factory SprklButton.l({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    Color? backgroundColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    Color? borderColor,
    bool hasBorder = false,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      onPressed: onPressed,
      size: SprklButtonSize.l,
      borderRadius: borderRadius,
      borderColor: borderColor,
      hasBorder: hasBorder,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  ///
  ///The size predeterminate Button constructor
  ///with predestinated [size] value = [SprklButtonSize.m]
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primary]
  ///[textStyle] text style, default [textStyle] value is [labelS]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is [SprklSizes.x6] = 12
  ///
  ///[padding] content padding
  ///default [padding] value is
  ///[SprklButtonPaddings.xl] = horizontal: 16, vertical: 8
  ///
  ///[onPressed] on pressed function
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 8
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [hasBorder] flag to control border visibility
  /// border line width is constant 1
  /// [elevation] button elevation
  ///
  factory SprklButton.m({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    Color? backgroundColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    Color? borderColor,
    bool hasBorder = false,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      onPressed: onPressed,
      size: SprklButtonSize.m,
      borderRadius: borderRadius,
      borderColor: borderColor,
      hasBorder: hasBorder,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  ///
  ///The size predeterminate Button constructor
  ///with predestinated [size] value = [SprklButtonSize.s]
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primary]
  ///[textStyle] text style, default [textStyle] value is [labelS]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is [SprklSizes.x6] = 12
  ///
  ///[padding] content padding
  ///default [padding] value is
  ///[SprklButtonPaddings.xl] = horizontal: 12, vertical: 6
  ///
  ///[onPressed] on pressed function
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 8
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [hasBorder] flag to control border visibility
  /// border line width is constant 1
  /// [elevation] button elevation
  ///
  factory SprklButton.s({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    Color? backgroundColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    Color? borderColor,
    bool hasBorder = false,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      onPressed: onPressed,
      size: SprklButtonSize.s,
      borderRadius: borderRadius,
      borderColor: borderColor,
      hasBorder: hasBorder,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  ///
  ///The Ghost Button constructor with predestinated ghost style
  ///[backgroundColor] value predestinated with [Colors.transparent]
  ///[hasBorder] flag predestinated as true
  /// border line width is constant 1
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[textStyle] text style, default [textStyle] value used depends of [size]
  ///if [size] is [SprklButtonSize.s] so [textStyle] = [labelS]
  ///else [textStyle] = [labelM]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is depended of [size]
  ///
  ///if [size] == [SprklButtonSize.xl] then [iconSpacer] = [SprklSizes.x6] = 12
  ///if [size] == [SprklButtonSize.l] then [iconSpacer] = [SprklSizes.x6] = 12
  ///if [size] == [SprklButtonSize.m] then [iconSpacer] = [SprklSizes.x4] = 8
  ///if [size] == [SprklButtonSize.s] then [iconSpacer] = [SprklSizes.x4] = 8
  ///
  ///[padding] content padding
  ///default [padding] value is depended of [size]
  ///
  ///if [size] == [SprklButtonSize.xl] then [padding] =
  ///[SprklButtonPaddings.xl] = horizontal: 24, vertical: 16
  ///if [size] == [SprklButtonSize.l] then [padding] =
  ///[SprklButtonPaddings.l] = horizontal: 20, vertical: 12
  ///if [size] == [SprklButtonSize.m] then [padding] =
  ///[SprklButtonPaddings.m] = horizontal: 16, vertical: 8
  ///if [size] == [SprklButtonSize.s] then [padding] =
  ///[SprklButtonPaddings.s] = horizontal: 12, vertical: 6
  ///
  ///[onPressed] on pressed function
  ///[size] components standard size which predeterminate default values
  ///for [textStyle] and [iconSpacer] and [padding]
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 12
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [elevation] button elevation
  ///
  factory SprklButton.ghost({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    SprklButtonSize size = SprklButtonSize.xl,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: Colors.transparent,
      textStyle: textStyle,
      onPressed: onPressed,
      size: size,
      borderRadius: borderRadius,
      hasBorder: true,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  ///
  ///The Outline Button constructor with predestinated outline style
  ///[backgroundColor] value predestinated with [Colors.white]
  ///[hasBorder] flag predestinated as true
  /// border line width is constant 1
  ///
  ///[text] button text
  ///[suffix] widget to the left of the text
  ///[prefix] widget to the right of the text
  ///[primaryColor] text color, by default [neutralsColors.white]
  ///[textStyle] text style, default [textStyle] value used depends of [size]
  ///if [size] is [SprklButtonSize.s] so [textStyle] = [labelS]
  ///else [textStyle] = [labelM]
  ///
  ///[iconSpacer] the distance is between icon and text
  ///default [iconSpacer] value is depended of [size]
  ///
  ///if [size] == [SprklButtonSize.xl] then [iconSpacer] = [SprklSizes.x6] = 12
  ///if [size] == [SprklButtonSize.l] then [iconSpacer] = [SprklSizes.x6] = 12
  ///if [size] == [SprklButtonSize.m] then [iconSpacer] = [SprklSizes.x4] = 8
  ///if [size] == [SprklButtonSize.s] then [iconSpacer] = [SprklSizes.x4] = 8
  ///
  ///[padding] content padding
  ///default [padding] value is depended of [size]
  ///
  ///if [size] == [SprklButtonSize.xl] then [padding] =
  ///[SprklButtonPaddings.xl] = horizontal: 24, vertical: 16
  ///if [size] == [SprklButtonSize.l] then [padding] =
  ///[SprklButtonPaddings.l] = horizontal: 20, vertical: 12
  ///if [size] == [SprklButtonSize.m] then [padding] =
  ///[SprklButtonPaddings.m] = horizontal: 16, vertical: 8
  ///if [size] == [SprklButtonSize.s] then [padding] =
  ///[SprklButtonPaddings.s] = horizontal: 12, vertical: 6
  ///
  ///[onPressed] on pressed function
  ///[size] components standard size which predeterminate default values
  ///for [textStyle] and [iconSpacer] and [padding]
  /// [borderRadius] the border radius value,
  /// default [borderRadius] = [SprklSizes.x6] = 12
  /// [borderColor] border color
  /// [borderColor] sets only if [hasBorder] property is true
  /// be default border color use [primaryColor] is exist,
  /// if not [neutralsColors.white]
  /// [elevation] button elevation
  ///
  factory SprklButton.outline({
    required String text,
    Widget? suffix,
    Widget? prefix,
    Color? primaryColor,
    TextStyle? textStyle,
    Function()? onPressed,
    double? borderRadius,
    SprklButtonSize size = SprklButtonSize.xl,
    double? iconSpacer,
    double? elevation,
  }) {
    return SprklButton(
      text: text,
      suffix: suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: Colors.white,
      textStyle: textStyle,
      onPressed: onPressed,
      size: size,
      borderRadius: borderRadius,
      hasBorder: true,
      iconSpacer: iconSpacer,
      elevation: elevation,
    );
  }

  SprklButton copyWith({
    String? newText,
    Function()? newOnPressed,
    Widget? newSuffix,
  }) {
    return SprklButton(
      text: newText ?? text,
      suffix: newSuffix ?? suffix,
      prefix: prefix,
      primaryColor: primaryColor,
      backgroundColor: backgroundColor,
      textStyle: textStyle,
      onPressed: newOnPressed ?? onPressed,
      size: size,
      borderRadius: borderRadius,
      borderColor: borderColor,
      hasBorder: hasBorder,
    );
  }

  @override
  State<SprklButton> createState() => _SprklButtonState();
}

class _SprklButtonState extends State<SprklButton> {
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  SprklTextStyle get styles => Theme.of(context).extension<SprklTextStyle>()!;

  Widget iconWrapper({
    required Widget? icon,
    bool isSuffix = false,
  }) {
    if (icon == null) {
      return Container();
    } else {
      return Padding(
        padding: isSuffix
            ? EdgeInsets.only(left: widget.iconSpacer ?? getDefaultSpace())
            : EdgeInsets.only(right: widget.iconSpacer ?? getDefaultSpace()),
        child: icon,
      );
    }
  }

  TextStyle getDefaultTextStyle() {
    switch (widget.size) {
      case SprklButtonSize.xl:
      case SprklButtonSize.l:
      case SprklButtonSize.m:
        return styles.labelM!.copyWith(
          color: widget.primaryColor ?? colors.neutralsColors!.white,
        );
      case SprklButtonSize.s:
        return styles.labelS!.copyWith(
          color: widget.primaryColor ?? colors.neutralsColors!.white,
        );
    }
  }

  EdgeInsets getDefaultPadding() {
    switch (widget.size) {
      case SprklButtonSize.xl:
        return SprklButtonPaddings.xl;
      case SprklButtonSize.l:
        return SprklButtonPaddings.l;
      case SprklButtonSize.m:
        return SprklButtonPaddings.m;
      case SprklButtonSize.s:
        return SprklButtonPaddings.s;
    }
  }

  double getDefaultSpace() {
    switch (widget.size) {
      case SprklButtonSize.xl:
      case SprklButtonSize.l:
        return SprklSizes.x6;
      case SprklButtonSize.m:
      case SprklButtonSize.s:
        return SprklSizes.x4;
    }
  }

  Widget get body => ElevatedButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          overlayColor: MaterialStateProperty.all(Colors.transparent),
          foregroundColor: MaterialStateProperty.all(
            widget.primaryColor ?? colors.primaryColors!.primary,
          ),
          minimumSize: MaterialStateProperty.all(
            widget.expanded ? const Size(double.infinity, 0) : const Size(0, 0),
          ),
          backgroundColor: MaterialStateProperty.all(
            widget.backgroundColor ?? colors.primaryColors!.primary,
          ),
          splashFactory: NoSplash.splashFactory,
          elevation: MaterialStateProperty.all(
            widget.elevation ??
                (widget.backgroundColor == Colors.transparent ? 0 : null),
          ),
          shadowColor: MaterialStateProperty.all(
            widget.backgroundColor == Colors.transparent
                ? Colors.transparent
                : null,
          ),
          padding: MaterialStateProperty.all(
            widget.padding ?? getDefaultPadding(),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              side: BorderSide(
                color: widget.hasBorder
                    ? widget.borderColor ??
                        widget.primaryColor ??
                        colors.neutralsColors!.white!
                    : Colors.transparent,
              ),
              borderRadius:
                  BorderRadius.circular(widget.borderRadius ?? SprklSizes.x6),
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            iconWrapper(icon: widget.prefix),
            Text(
              widget.text,
              style: widget.textStyle ?? getDefaultTextStyle(),
            ),
            iconWrapper(
              icon: widget.suffix,
              isSuffix: true,
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return widget.expanded ? body : Wrap(children: [Center(child: body)]);
  }
}
