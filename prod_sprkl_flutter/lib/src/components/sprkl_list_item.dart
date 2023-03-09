import 'package:flutter/material.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

///
///Designed by sprkl custom SprklListItem component
///
class SprklListItem extends StatefulWidget {
  final String title;
  final String? subTitle;
  final Widget? image;
  final SprklListItemActionType type;
  final Widget? customAction;
  final String? chevronText;
  final Color? enabledColor;
  final Color? disabledColor;
  final TextStyle? titleTextStyle;
  final TextStyle? subTitleTextStyle;
  final Function(bool?)? onActionValueChanged;
  final double? leftPadding;
  final EdgeInsets? padding;
  final double? itemHeight;
  final bool? initialActionValue;
  final double? borderRadius;
  final Color? backgroundColor;

  const SprklListItem._private({
    required this.title,
    this.subTitle,
    this.image,
    required this.type,
    this.customAction,
    this.chevronText,
    this.enabledColor,
    this.disabledColor,
    this.titleTextStyle,
    this.subTitleTextStyle,
    this.onActionValueChanged,
    this.leftPadding,
    this.itemHeight,
    this.initialActionValue,
    this.padding,
    this.borderRadius,
    this.backgroundColor,
  });

  ///
  ///The action type predeterminate SprklListItem constructor
  ///with predestinated [type] value = [SprklListItemActionType.checkbox]
  ///
  ///[title] required main text
  ///[subTitle] secondary text
  ///[image] left side widget of the list item
  ///
  ///[enabledColor] active checkbox color
  ///[disabledColor] inactive checkbox color
  ///[titleTextStyle] text style of the main text
  ///[subTitleTextStyle] text style of the secondary text
  ///[onActionValueChanged] called when the value of the checkbox should change
  ///
  ///[leftPadding] space between the text and left side widget
  ///by default is [SprklSizes.x6] = 12
  ///[padding] content padding
  ///
  ///default [padding] value is horizontal [SprklSizes.x8] = 16
  ///
  ///[itemHeight] item height
  ///default [itemHeight] value is [SprklSizes.x36] = 72
  ///
  /// [initialActionValue] initial checkbox value
  /// by default [initialActionValue] is false
  ///[borderRadius] border radius
  ///[backgroundColor] item background color, by default transparent
  ///
  factory SprklListItem.checkbox({
    required String title,
    String? subTitle,
    Widget? image,
    Color? enabledColor,
    Color? disabledColor,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle,
    Function(bool?)? onActionValueChanged,
    double? leftPadding,
    EdgeInsets? padding,
    double? itemHeight,
    bool? initialActionValue,
    double? borderRadius,
    Color? backgroundColor,
  }) {
    return SprklListItem._private(
      title: title,
      image: image,
      subTitle: subTitle,
      type: SprklListItemActionType.checkbox,
      enabledColor: enabledColor,
      disabledColor: disabledColor,
      titleTextStyle: titleTextStyle,
      subTitleTextStyle: subTitleTextStyle,
      onActionValueChanged: onActionValueChanged,
      leftPadding: leftPadding,
      padding: padding,
      itemHeight: itemHeight,
      initialActionValue: initialActionValue,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
    );
  }

  ///
  ///The action type predeterminate SprklListItem constructor
  ///with predestinated [type] value = [SprklListItemActionType.switcher]
  ///
  ///[title] required main text
  ///[subTitle] secondary text
  ///[image] left side widget of the list item
  ///
  ///[enabledColor] active switch color
  ///[disabledColor] inactive switch color
  ///[titleTextStyle] text style of the main text
  ///[subTitleTextStyle] text style of the secondary text
  ///[onActionValueChanged] called when the value of the switch should change
  ///
  ///[leftPadding] space between the text and left side widget
  ///by default is [SprklSizes.x6] = 12
  ///[padding] content padding
  ///
  ///default [padding] value is horizontal [SprklSizes.x8] = 16
  ///
  ///[itemHeight] item height
  ///default [itemHeight] value is [SprklSizes.x36] = 72
  ///
  /// [initialActionValue] initial switch value
  /// by default [initialActionValue] is false
  ///[borderRadius] border radius
  ///[backgroundColor] item background color, by default transparent
  ///
  factory SprklListItem.switcher({
    required String title,
    String? subTitle,
    Widget? image,
    Color? enabledColor,
    Color? disabledColor,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle,
    Function(bool?)? onActionValueChanged,
    double? leftPadding,
    EdgeInsets? padding,
    double? itemHeight,
    bool? initialActionValue,
    double? borderRadius,
    Color? backgroundColor,
  }) {
    return SprklListItem._private(
      title: title,
      image: image,
      subTitle: subTitle,
      type: SprklListItemActionType.switcher,
      enabledColor: enabledColor,
      disabledColor: disabledColor,
      titleTextStyle: titleTextStyle,
      subTitleTextStyle: subTitleTextStyle,
      onActionValueChanged: onActionValueChanged,
      leftPadding: leftPadding,
      padding: padding,
      itemHeight: itemHeight,
      initialActionValue: initialActionValue,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
    );
  }

  ///
  ///The action type predeterminate SprklListItem constructor
  ///with predestinated [type] value = [SprklListItemActionType.chevron]
  ///
  ///[title] required main text
  ///[subTitle] secondary text
  ///[chevronText] chevron text
  ///[image] left side widget of the list item
  ///
  ///[chevronColor] chevron icon and text color
  ///[titleTextStyle] text style of the main text
  ///[subTitleTextStyle] text style of the secondary text
  ///
  ///[leftPadding] space between the text and left side widget
  ///by default is [SprklSizes.x6] = 12
  ///[padding] content padding
  ///
  ///default [padding] value is horizontal [SprklSizes.x8] = 16
  ///
  ///[itemHeight] item height
  ///default [itemHeight] value is [SprklSizes.x36] = 72
  ///
  ///[borderRadius] border radius
  ///[backgroundColor] item background color, by default transparent
  ///
  factory SprklListItem.chevron({
    required String title,
    required String chevronText,
    String? subTitle,
    Widget? image,
    Color? chevronColor,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle,
    double? leftPadding,
    EdgeInsets? padding,
    double? itemHeight,
    double? borderRadius,
    Color? backgroundColor,
  }) {
    return SprklListItem._private(
      title: title,
      image: image,
      subTitle: subTitle,
      type: SprklListItemActionType.chevron,
      chevronText: chevronText,
      disabledColor: chevronColor,
      titleTextStyle: titleTextStyle,
      subTitleTextStyle: subTitleTextStyle,
      leftPadding: leftPadding,
      padding: padding,
      itemHeight: itemHeight,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
    );
  }

  ///
  ///The action type predeterminate SprklListItem constructor
  ///with predestinated [type] value = [SprklListItemActionType.custom]
  ///
  ///[title] required main text
  ///[subTitle] secondary text
  ///[customAction] custom action widget
  ///[image] left side widget of the list item
  ///
  ///[titleTextStyle] text style of the main text
  ///[subTitleTextStyle] text style of the secondary text
  ///
  ///[leftPadding] space between the text and left side widget
  ///by default is [SprklSizes.x6] = 12
  ///[padding] content padding
  ///
  ///default [padding] value is horizontal [SprklSizes.x8] = 16
  ///
  ///[itemHeight] item height
  ///default [itemHeight] value is [SprklSizes.x36] = 72
  ///
  ///[borderRadius] border radius
  ///[backgroundColor] item background color, by default transparent
  ///
  factory SprklListItem.custom({
    required String title,
    required Widget customAction,
    String? subTitle,
    Widget? image,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle,
    double? leftPadding,
    EdgeInsets? padding,
    double? itemHeight,
    double? borderRadius,
    Color? backgroundColor,
  }) {
    return SprklListItem._private(
      title: title,
      image: image,
      subTitle: subTitle,
      type: SprklListItemActionType.custom,
      titleTextStyle: titleTextStyle,
      subTitleTextStyle: subTitleTextStyle,
      customAction: customAction,
      leftPadding: leftPadding,
      padding: padding,
      itemHeight: itemHeight,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
    );
  }

  ///
  ///The action type predeterminate SprklListItem constructor
  ///with predestinated [type] value = [SprklListItemActionType.empty] (no actions)
  ///
  ///[title] required main text
  ///[subTitle] secondary text
  ///[image] left side widget of the list item
  ///
  ///[titleTextStyle] text style of the main text
  ///[subTitleTextStyle] text style of the secondary text
  ///
  ///[leftPadding] space between the text and left side widget
  ///by default is [SprklSizes.x6] = 12
  ///[padding] content padding
  ///
  ///default [padding] value is horizontal [SprklSizes.x8] = 16
  ///
  ///[itemHeight] item height
  ///default [itemHeight] value is [SprklSizes.x36] = 72
  ///
  ///[borderRadius] border radius
  ///[backgroundColor] item background color, by default transparent
  ///
  factory SprklListItem.empty({
    required String title,
    String? subTitle,
    Widget? image,
    TextStyle? titleTextStyle,
    TextStyle? subTitleTextStyle,
    double? leftPadding,
    EdgeInsets? padding,
    double? itemHeight,
    double? borderRadius,
    Color? backgroundColor,
  }) {
    return SprklListItem._private(
      title: title,
      image: image,
      subTitle: subTitle,
      type: SprklListItemActionType.empty,
      titleTextStyle: titleTextStyle,
      subTitleTextStyle: subTitleTextStyle,
      leftPadding: leftPadding,
      padding: padding,
      itemHeight: itemHeight,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
    );
  }

  @override
  State<SprklListItem> createState() => _SprklListItemState();
}

class _SprklListItemState extends State<SprklListItem> {
  bool? actionValue;
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  SprklTextStyle get styles => Theme.of(context).extension<SprklTextStyle>()!;

  TextStyle get titleTextStyle =>
      widget.titleTextStyle ??
      styles.labelM!
          .copyWith(color: colors.neutralsColors!.neutralPalette!.c700);

  TextStyle get subTitleTextStyle =>
      widget.subTitleTextStyle ??
      styles.bodyS!
          .copyWith(color: colors.neutralsColors!.neutralPalette!.c500);

  Widget get image {
    return widget.image ?? Container();
  }

  Widget get text {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: titleTextStyle,
        ),
        widget.subTitle != null
            ? Text(
                widget.subTitle!,
                style: subTitleTextStyle,
              )
            : Container(),
      ],
    );
  }

  Widget get action {
    switch (widget.type) {
      case SprklListItemActionType.checkbox:
        return Theme(
          data: ThemeData(
            unselectedWidgetColor: colors.neutralsColors!.neutralPalette!.c400,
          ),
          child: Checkbox(
              value: actionValue,
              activeColor: colors.primaryColors!.primaryPalette!.c500,
              onChanged: (value) {
                setState(() {
                  if (widget.onActionValueChanged != null) {
                    widget.onActionValueChanged!(value);
                  }
                  actionValue = value ?? false;
                });
              }),
        );
      case SprklListItemActionType.chevron:
        return Row(
          children: [
            Text(
              widget.chevronText ?? '',
              style: styles.bodyS!.copyWith(
                color: colors.neutralsColors!.neutralPalette!.c400,
              ),
            ),
            Icon(
              Icons.chevron_right,
              color: widget.disabledColor ??
                  colors.neutralsColors!.neutralPalette!.c400,
            ),
          ],
        );
      case SprklListItemActionType.switcher:
        return Switch(
            value: actionValue ?? false,
            activeColor: colors.primaryColors!.primaryPalette!.c500,
            activeTrackColor: colors.primaryColors!.primaryPalette!.c100,
            inactiveTrackColor: colors.neutralsColors!.neutralPalette!.c200,
            inactiveThumbColor: colors.neutralsColors!.neutralPalette!.c400,
            onChanged: (value) {
              setState(() {
                if (widget.onActionValueChanged != null) {
                  widget.onActionValueChanged!(value);
                }
                actionValue = value;
              });
            });
      case SprklListItemActionType.empty:
        return Container();
      case SprklListItemActionType.custom:
        return widget.customAction ?? Container();
    }
  }

  double get leftSpace =>
      widget.leftPadding ?? (widget.image == null ? 0 : SprklSizes.x6);

  @override
  void initState() {
    actionValue ??= widget.initialActionValue ?? false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: widget.itemHeight ?? SprklSizes.x36,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(widget.borderRadius ?? 0),
            color: widget.backgroundColor ?? Colors.transparent),
        padding: widget.padding ??
            const EdgeInsets.symmetric(horizontal: SprklSizes.x8),
        child: Row(
          children: [
            image,
            SizedBox(
              width: leftSpace,
            ),
            text,
            const Spacer(),
            action
          ],
        ));
  }
}
