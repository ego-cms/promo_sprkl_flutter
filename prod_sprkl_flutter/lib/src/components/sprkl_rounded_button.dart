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
///Designed by SPRKL custom rounded button component
///
class SprklRoundedButton extends StatefulWidget {
  const SprklRoundedButton._private({
    this.buttonSize = SprklSizes.x24,
    this.iconSize = SprklSizes.x12,
    this.iconColor,
    this.backgroundColor,
    this.iconData,
    this.onTap,
    this.imageSource,
    required this.type,
  });

  ///
  ///The SprklRoundedButton constructor with [Icon] as image source
  ///
  ///[buttonSize] predefined button size, by default [SprklSizes.x24] = 48
  ///[iconSize] predefined icon size, by default [SprklSizes.x12] = 24
  ///[iconColor] icon color,  by default [colors.neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primaryPalette.c700]
  ///
  ///[iconData] required [IconData] property
  ///[onTap] calls on button tapped
  ///
  factory SprklRoundedButton.icon({
    required IconData iconData,
    double buttonSize = SprklSizes.x24,
    double iconSize = SprklSizes.x12,
    Color? iconColor,
    Color? backgroundColor,
    void Function()? onTap,
  }) {
    return SprklRoundedButton._private(
      iconData: iconData,
      buttonSize: buttonSize,
      iconSize: iconSize,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      onTap: onTap,
      type: RoundedButtonType.icon,
    );
  }

  ///
  ///The SprklRoundedButton constructor with network [Image] as image source
  ///
  ///[buttonSize] predefined button size, by default [SprklSizes.x24] = 48
  ///[iconSize] predefined icon size, by default [SprklSizes.x12] = 24
  ///[iconColor] icon color,  by default [colors.neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primaryPalette.c700]
  ///
  ///[imageSource] required image source property
  ///[onTap] calls on button tapped
  ///
  factory SprklRoundedButton.network({
    required String imageSource,
    double buttonSize = SprklSizes.x24,
    double iconSize = SprklSizes.x12,
    Color? iconColor,
    Color? backgroundColor,
    void Function()? onTap,
  }) {
    return SprklRoundedButton._private(
      imageSource: imageSource,
      buttonSize: buttonSize,
      iconSize: iconSize,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      onTap: onTap,
      type: RoundedButtonType.network,
    );
  }

  ///
  ///The SprklRoundedButton constructor with asset [Image] as image source
  ///
  ///[buttonSize] predefined button size, by default [SprklSizes.x24] = 48
  ///[iconSize] predefined icon size, by default [SprklSizes.x12] = 24
  ///[iconColor] icon color,  by default [colors.neutralsColors.white]
  ///[backgroundColor] background color, by default [primaryColors.primaryPalette.c700]
  ///
  ///[imageSource] required image source property
  ///[onTap] calls on button tapped
  ///
  factory SprklRoundedButton.assets({
    required String imageSource,
    double buttonSize = SprklSizes.x24,
    double iconSize = SprklSizes.x12,
    Color? iconColor,
    Color? backgroundColor,
    void Function()? onTap,
  }) {
    return SprklRoundedButton._private(
      imageSource: imageSource,
      buttonSize: buttonSize,
      iconSize: iconSize,
      iconColor: iconColor,
      backgroundColor: backgroundColor,
      onTap: onTap,
      type: RoundedButtonType.asset,
    );
  }

  final double buttonSize;
  final double iconSize;
  final Color? iconColor;
  final Color? backgroundColor;
  final IconData? iconData;
  final void Function()? onTap;
  final String? imageSource;
  final RoundedButtonType type;

  @override
  State<SprklRoundedButton> createState() => _SprklRoundedButtonState();
}

class _SprklRoundedButtonState extends State<SprklRoundedButton> {
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;

  Color get iconColor => widget.iconColor ?? colors.neutralsColors!.white!;
  Color get backgroundColor =>
      widget.backgroundColor ?? colors.primaryColors!.primaryPalette!.c700;

  Widget get imageContent {
    switch (widget.type) {
      case RoundedButtonType.icon:
        return Icon(
          widget.iconData,
          size: widget.iconSize,
          color: iconColor,
        );
      case RoundedButtonType.network:
        return Image.network(
          widget.imageSource!,
          width: widget.iconSize,
        );
      case RoundedButtonType.asset:
        return Image.asset(
          widget.imageSource!,
          width: widget.iconSize,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        width: widget.buttonSize,
        height: widget.buttonSize,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: backgroundColor,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: widget.onTap,
            child: imageContent,
          ),
        ),
      ),
    );
  }
}
