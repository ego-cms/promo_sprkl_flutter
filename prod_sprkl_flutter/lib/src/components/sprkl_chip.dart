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
///Designed by sprkl custom Chip component
///
class SprklChip extends StatefulWidget {
  final String text;
  final Function()? closeClicked;
  final SprklChipsType chipsType;
  final String? imageSource;
  final IconData? iconData;
  final SprklChipsStyle style;

  const SprklChip._private({
    required this.text,
    required this.chipsType,
    required this.style,
    this.closeClicked,
    this.imageSource,
    this.iconData,
  });

  ///
  ///The SprklChip constructor which allows to configure component
  /// without left side widget
  ///
  ///[text] required chips text
  ///
  ///[primary] background color, by default [primaryColors.primaryPalette.c500]
  ///[iconColor] close icon color if exist
  ///[textStyle] text style, by default [labelM]
  ///
  ///[closeClicked] called when licked on close icon
  ///CAUTION if [closeClicked] is null close button invisible
  ///
  factory SprklChip.empty({
    required String text,
    Color? primary,
    Color? iconColor,
    Color? textColor,
    TextStyle? textStyle,
    Function()? closeClicked,
  }) {
    final style = SprklChipsStyle(
      primary: primary,
      iconColor: iconColor,
      textColor: textColor,
      textStyle: textStyle,
    );
    return SprklChip._private(
      text: text,
      chipsType: SprklChipsType.empty,
      style: style,
      closeClicked: closeClicked,
    );
  }

  ///
  ///The SprklChip constructor which allows to configure component
  /// with icon as left side widget
  ///
  ///[text] required chips text
  ///[iconData] required [IconData] value for left side icon
  ///
  ///[primary] background color, by default [primaryColors.primaryPalette.c500]
  ///[iconColor] color of left side icon and close icon if exist
  ///[textStyle] text style, by default [labelM]
  ///
  ///[closeClicked] called when licked on close icon
  ///CAUTION if [closeClicked] is null close button invisible
  ///
  factory SprklChip.icon({
    required String text,
    required IconData iconData,
    Color? primary,
    Color? iconColor,
    Color? textColor,
    TextStyle? textStyle,
    Function()? closeClicked,
  }) {
    final style = SprklChipsStyle(
      primary: primary,
      iconColor: iconColor,
      textColor: textColor,
      textStyle: textStyle,
    );

    return SprklChip._private(
      text: text,
      iconData: iconData,
      chipsType: SprklChipsType.icon,
      style: style,
      closeClicked: closeClicked,
    );
  }

  ///
  ///The SprklChip constructor which allows to configure component
  /// with image from network as left side widget
  ///
  ///[text] required chips text
  ///[url] required string url value for left side image
  ///
  ///[primary] background color, by default [primaryColors.primaryPalette.c500]
  ///[iconColor] color of left side icon and close icon if exist
  ///[textStyle] text style, by default [labelM]
  ///
  ///[closeClicked] called when licked on close icon
  ///CAUTION if [closeClicked] is null close button invisible
  ///
  factory SprklChip.url({
    required String text,
    required String url,
    Color? primary,
    Color? iconColor,
    Color? textColor,
    TextStyle? textStyle,
    Function()? closeClicked,
  }) {
    final style = SprklChipsStyle(
      primary: primary,
      iconColor: iconColor,
      textColor: textColor,
      textStyle: textStyle,
    );

    return SprklChip._private(
      text: text,
      imageSource: url,
      chipsType: SprklChipsType.url,
      style: style,
      closeClicked: closeClicked,
    );
  }

  ///
  ///The SprklChip constructor which allows to configure component
  /// with image from assets as left side widget
  ///
  ///[text] required chips text
  ///[assets] required string assets path for left side image
  ///
  ///[primary] background color, by default [primaryColors.primaryPalette.c500]
  ///[iconColor] color of left side icon and close icon if exist
  ///[textStyle] text style, by default [labelM]
  ///
  ///[closeClicked] called when licked on close icon
  ///CAUTION if [closeClicked] is null close button invisible
  ///
  factory SprklChip.assets({
    required String text,
    required String assets,
    Color? primary,
    Color? iconColor,
    Color? textColor,
    TextStyle? textStyle,
    Function()? closeClicked,
  }) {
    final style = SprklChipsStyle(
      primary: primary,
      iconColor: iconColor,
      textColor: textColor,
      textStyle: textStyle,
    );
    return SprklChip._private(
      text: text,
      imageSource: assets,
      chipsType: SprklChipsType.assets,
      style: style,
      closeClicked: closeClicked,
    );
  }

  @override
  State<SprklChip> createState() => _SprklChipState();
}

class _SprklChipState extends State<SprklChip> {
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  SprklTextStyle get styles => Theme.of(context).extension<SprklTextStyle>()!;

  Color get primaryColor =>
      widget.style.primary ?? colors.primaryColors!.primaryPalette!.c500;

  Color get iconColor =>
      widget.style.iconColor ?? colors.neutralsColors!.white!;

  Widget get close => widget.closeClicked == null
      ? Container()
      : GestureDetector(
          onTap: () {
            widget.closeClicked!();
          },
          child: Icon(
            Icons.cancel,
            color: iconColor,
            size: SprklSizes.x9,
          ),
        );

  Widget get prefix {
    switch (widget.chipsType) {
      case SprklChipsType.empty:
        return Container();
      case SprklChipsType.assets:
        return imageWrapper(Image.asset(widget.imageSource!));
      case SprklChipsType.url:
        return imageWrapper(Image.network(widget.imageSource!));
      case SprklChipsType.icon:
        return Icon(widget.iconData!, color: iconColor);
      default:
        return Container();
    }
  }

  Widget imageWrapper(Image image) {
    return SizedBox(
      height: SprklSizes.x12,
      width: SprklSizes.x12,
      child: ClipOval(
        clipBehavior: Clip.hardEdge,
        child: image,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: SprklSizes.x2,
        vertical: 1,
      ),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(SprklSizes.x12),
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prefix,
          SizedBox(
            width: widget.chipsType == SprklChipsType.empty
                ? SprklSizes.x3
                : SprklSizes.x2,
          ),
          Text(
            widget.text,
            textAlign: TextAlign.center,
            style: widget.style.textStyle ??
                styles.labelM!.copyWith(
                  color: colors.neutralsColors!.white!,
                ),
          ),
          SizedBox(
            width: widget.closeClicked == null ? SprklSizes.x3 : SprklSizes.x2,
          ),
          close
        ],
      ),
    );
  }
}
