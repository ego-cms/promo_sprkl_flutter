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
import 'package:sprkl_flutter/src/services/sprkl_color_scheme.dart';
import 'package:sprkl_flutter/src/services/sprkl_text_style.dart';
import 'package:sprkl_flutter/src/utils/constants.dart';
import 'package:sprkl_flutter/src/utils/extensions.dart';
import 'package:sprkl_flutter/src/utils/resources.dart';

///
///Designed by sprkl custom Avatar component
///
class SprklAvatar extends StatefulWidget {
  final String value;
  final double size;
  final SprklAvatarImageSource source;
  final double? borderRadius;
  final TextStyle? textStyle;
  final Color? textColor;
  final Alignment alignment;
  final Color? borderColor;

  ///
  ///The base Avatar constructor which allows to configure component
  ///with all available properties
  ///
  ///background color is [primaryColors.primary]
  ///
  ///[value] image source or text
  ///you should set the [source] value to predeterminate
  ///how use [value]
  ///[size] components width and height
  ///[source] the flag which define the UI of the Avatar component type
  ///[SprklAvatarImageSource.assets] or [SprklAvatarImageSource.url] or [SprklAvatarImageSource.text]
  ///[borderRadius] sets the border radius
  ///IMPORTANT: if [borderRadius] is null the Avatar will be rounded
  ///[textStyle] text style, used only for [SprklAvatarImageSource.text]
  ///[textColor] text color, used only for [SprklAvatarImageSource.text]
  ///[alignment] content alignment, by default [Alignment.center]
  ///[borderColor] color of the border
  ///IMPORTANT: if [borderColor] is null border invisible
  ///
  const SprklAvatar.builder({
    super.key,
    required this.value,
    required this.size,
    required this.source,
    this.borderRadius,
    this.textStyle,
    this.textColor,
    this.alignment = Alignment.center,
    this.borderColor,
  });

  ///
  ///The Avatar constructor which allows to configure component
  ///with predetermined the [source] as [SprklAvatarImageSource.url]
  ///
  ///background color is [primaryColors.primary]
  ///
  ///[url] url to network image
  ///[size] components standard size,
  ///by default [SprklImageSize.xl] = [SprklSizes.x36] = 72
  ///[isCircle] if true sets the rounded shape,
  ///if not null sets the [borderRadius] as 1/4 of size value
  ///[alignment] content alignment, by default [Alignment.center]
  ///[borderColor] color of the border
  ///IMPORTANT: if [borderColor] is null border invisible
  ///
  factory SprklAvatar.url({
    Key? key,
    required String url,
    SprklImageSize size = SprklImageSize.xl,
    bool isCircle = true,
    Alignment alignment = Alignment.center,
    Color? borderColor,
  }) {
    return SprklAvatar.builder(
      key: key,
      size: size.getValue(),
      value: url,
      source: SprklAvatarImageSource.url,
      borderRadius: isCircle ? null : size.getValue() / 4,
      alignment: alignment,
      borderColor: borderColor,
    );
  }

  ///
  ///The Avatar constructor which allows to configure component
  ///with predetermined the [source] as [SprklAvatarImageSource.assets]
  ///
  ///background color is [primaryColors.primary]
  ///
  ///[assets] path to the image from assets
  ///[size] components standard size,
  ///by default [SprklImageSize.xl] = [SprklSizes.x36] = 72
  ///[isCircle] if true sets the rounded shape,
  ///if not null sets the [borderRadius] as 1/4 of size value
  ///[alignment] content alignment, by default [Alignment.center]
  ///[borderColor] color of the border
  ///IMPORTANT: if [borderColor] is null border invisible
  ///
  factory SprklAvatar.assets({
    Key? key,
    required String assets,
    SprklImageSize size = SprklImageSize.xl,
    bool isCircle = true,
    Alignment alignment = Alignment.center,
    Color? borderColor,
  }) {
    return SprklAvatar.builder(
      key: key,
      size: size.getValue(),
      value: assets,
      source: SprklAvatarImageSource.assets,
      borderRadius: isCircle ? null : size.getValue() / 4,
      alignment: alignment,
      borderColor: borderColor,
    );
  }

  ///
  ///The Avatar constructor which allows to configure component
  ///with predetermined the [source] as [SprklAvatarImageSource.text]
  ///
  ///background color is [primaryColors.primary]
  ///
  ///[text] initials of the name
  ///[size] components standard size,
  ///by default [SprklImageSize.xl] = [SprklSizes.x36] = 72
  ///[isCircle] if true sets the rounded shape,
  ///if not null sets the [borderRadius] as 1/4 of size value
  ///[textStyle] text style, used only for [SprklAvatarImageSource.text]
  ///[textColor] text color, used only for [SprklAvatarImageSource.text]
  ///[alignment] content alignment, by default [Alignment.center]
  ///[borderColor] color of the border
  ///IMPORTANT: if [borderColor] is null border invisible
  ///
  factory SprklAvatar.text({
    Key? key,
    required String text,
    SprklImageSize size = SprklImageSize.xl,
    bool isCircle = true,
    TextStyle? textStyle,
    Color? textColor,
    Alignment alignment = Alignment.center,
    Color? borderColor,
  }) {
    return SprklAvatar.builder(
      key: key,
      size: size.getValue(),
      value: text,
      source: SprklAvatarImageSource.text,
      borderRadius: isCircle ? null : size.getValue() / 4,
      textStyle: textStyle,
      textColor: textColor,
      alignment: alignment,
      borderColor: borderColor,
    );
  }

  ///
  ///The Avatar constructor which allows to configure component
  ///with predetermined the [source] as [SprklAvatarImageSource.assets]
  ///and [value] used default avatar image from internal assets
  ///
  ///background color is [primaryColors.primary]
  ///
  ///[size] components standard size,
  ///by default [SprklImageSize.xl] = [SprklSizes.x36] = 72
  ///[isCircle] if true sets the rounded shape,
  ///if not null sets the [borderRadius] as 1/4 of size value
  ///[borderColor] color of the border
  ///IMPORTANT: if [borderColor] is null border invisible
  ///
  factory SprklAvatar.empty({
    Key? key,
    SprklImageSize size = SprklImageSize.xl,
    bool isCircle = true,
    Color? borderColor,
  }) {
    return SprklAvatar.builder(
      key: key,
      size: size.getValue(),
      value: Resources.user,
      source: SprklAvatarImageSource.assets,
      borderRadius: isCircle ? null : size.getValue() / 4,
      alignment: Alignment.bottomCenter,
      borderColor: borderColor,
    );
  }

  @override
  State<SprklAvatar> createState() => _SprklAvatarState();
}

class _SprklAvatarState extends State<SprklAvatar> {
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  SprklTextStyle get styles => Theme.of(context).extension<SprklTextStyle>()!;

  Widget getChild() {
    switch (widget.source) {
      case SprklAvatarImageSource.url:
        return shapeWrapper(
          Image.network(
            widget.value,
            isAntiAlias: true,
            errorBuilder: (context, error, stackTrace) => errorIcon,
            loadingBuilder: ((context, child, loadingProgress) {
              if (loadingProgress == null) return child;
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(SprklSizes.x4),
                  child: CircularProgressIndicator(
                    color: colors.primaryColors!.accent,
                  ),
                ),
              );
            }),
          ),
        );
      case SprklAvatarImageSource.text:
        return shapeWrapper(Text(
          widget.value,
          style: widget.textStyle ??
              textStyle.copyWith(
                color: widget.textColor ?? colors.neutralsColors!.white,
              ),
        ));
      case SprklAvatarImageSource.assets:
        return shapeWrapper(
          Image.asset(
            widget.value,
            errorBuilder: (context, error, stackTrace) => errorIcon,
          ),
        );
    }
  }

  TextStyle get textStyle => widget.size <= 32
      ? styles.bodyS!
      : widget.size <= 40
          ? styles.bodyM!
          : styles.bodyL!;

  Icon get errorIcon => Icon(
        Icons.person,
        size: widget.size,
        color: colors.neutralsColors!.white,
      );

  Widget shapeWrapper(Widget child) {
    if (widget.borderRadius != null) {
      return ClipRRect(
        borderRadius: BorderRadius.circular(widget.borderRadius!),
        child: Container(
          color: colors.primaryColors!.primary!,
          child: Align(
            alignment: widget.alignment,
            child: child,
          ),
        ),
      );
    } else {
      return ClipOval(
        clipBehavior: Clip.hardEdge,
        child: Container(
          color: colors.primaryColors!.primary!,
          child: Align(
            alignment: widget.alignment,
            child: child,
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(
          height: widget.size,
          width: widget.size,
          decoration: BoxDecoration(
            shape: widget.borderRadius == null
                ? BoxShape.circle
                : BoxShape.rectangle,
            border: Border.all(
                color: widget.borderColor ?? Colors.transparent,
                width: widget.borderColor == null ? 0 : 2),
            color: colors.primaryColors!.primary!,
            borderRadius: widget.borderRadius == null
                ? null
                : BorderRadius.circular(widget.borderRadius!),
          ),
          child: getChild(),
        ),
      ],
    );
  }
}
