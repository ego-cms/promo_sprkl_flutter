import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

///
///Designed by sprkl custom Input component
///
class SprklInput extends StatefulWidget {
  final Function(String?)? onTextChanged;

  final String? hintText;
  final String? labelText;
  final String? helpText;
  final String? initialText;
  final SprklInputState state;
  final SprklInputStyle style;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String obscuringCharacter;
  final Widget? suffixIcon;
  final SprklInputType type;
  final SprklChipsStyle? chipStyle;
  final Color? passwordIconColor;
  final Widget? prefix;
  final bool hasBorder;
  final double? borderRadius;

  const SprklInput._private({
    this.state = SprklInputState.normal,
    this.onTextChanged,
    this.hintText,
    this.labelText,
    this.helpText,
    this.initialText,
    required this.style,
    this.inputFormatters,
    this.textInputAction,
    this.keyboardType,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.suffixIcon,
    required this.type,
    this.chipStyle,
    this.passwordIconColor,
    this.prefix,
    this.hasBorder = true,
    this.borderRadius,
  });

  ///
  ///The SprklInput constructor which allows to configure component
  ///
  ///[onTextChanged] called when text changed
  ///
  ///[normalStateColor] normal state [SprklInputState.normal] color of the help
  ///text and border, by default [neutralsColors.neutralPalette.c300]
  ///[errorStateColor] error state [SprklInputState.error] color of the help
  ///text, border and suffix icon, by default [semanticColors.errorPalette.c600]
  ///[succeedStateColor] succeed state [SprklInputState.succeed] color
  ///of the border, by default [primaryColors.primary]
  ///[disabledStateColor] disabled state [SprklInputState.disabled] color of the help
  ///text, border and suffix icon, by default [neutralsColors.neutralPalette.c300]
  ///[normalTextColor] text color in normal state,
  ///by default [neutralsColors.neutralPalette.c700]
  ///[normalIconColor] suffix icon color in normal state,
  /// by default [neutralsColors.neutralPalette.c500]
  ///
  ///[hintTextColor] hint text color, by default [neutralsColors.neutralPalette.c400]
  ///[backgroundColor] background color, by default [neutralsColors.white]
  ///
  ///[hintText] hint/placeholder text
  ///[labelText] top label text, if null control height counted without it
  ///[helpText] bottom help text, if null control height counted without it
  ///[initialText] general text, if you need default value
  ///[state] Input state field [SprklInputState]
  ///[size] Input sprkl size field [SprklInputSize], controls the text padding
  ///
  ///[inputFormatters] bridge to [inputFormatters] on [TextField]
  ///[textInputAction] bridge to [textInputAction] on [TextField]
  ///[keyboardType] bridge to [keyboardType] on [TextField]
  ///[obscureText] bridge to [obscureText] on [TextField]
  ///[obscuringCharacter] bridge to [obscuringCharacter] on [TextField]
  ///[suffixIcon] right side widget
  ///[prefixIcon] left side widget
  ///[borderRadius] border radius
  ///
  factory SprklInput.builder({
    Function(String?)? onTextChanged,
    Color? normalStateColor,
    Color? errorStateColor,
    Color? succeedStateColor,
    Color? disabledStateColor,
    Color? normalTextColor,
    Color? normalIconColor,
    Color? hintTextColor,
    Color? backgroundColor,
    String? hintText,
    String? labelText,
    String? helpText,
    String? initialText,
    SprklInputState state = SprklInputState.normal,
    SprklInputSize size = SprklInputSize.l,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    bool obscureText = false,
    String obscuringCharacter = '•',
    Widget? suffixIcon,
    Widget? prefixIcon,
    bool? hasBorder,
    double? borderRadius,
  }) {
    final style = SprklInputStyle(
      normalStateColor: normalStateColor,
      errorStateColor: errorStateColor,
      succeedStateColor: succeedStateColor,
      disabledStateColor: disabledStateColor,
      normalTextColor: normalTextColor,
      normalIconColor: normalIconColor,
      hintTextColor: hintTextColor,
      backgroundColor: backgroundColor,
      padding: size.toPadding(),
    );

    return SprklInput._private(
      state: state,
      onTextChanged: onTextChanged,
      hintText: hintText,
      labelText: labelText,
      helpText: helpText,
      initialText: initialText,
      style: style,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      suffixIcon: suffixIcon,
      type: SprklInputType.custom,
      prefix: prefixIcon,
      hasBorder: hasBorder ?? true,
      borderRadius: borderRadius,
    );
  }

  ///
  ///The SprklInput constructor with clean suffix icon and clean text logic
  ///
  ///[onTextChanged] called when text changed
  ///
  ///[normalStateColor] normal state [SprklInputState.normal] color of the help
  ///text and border, by default [neutralsColors.neutralPalette.c300]
  ///[errorStateColor] error state [SprklInputState.error] color of the help
  ///text, border and suffix icon, by default [semanticColors.errorPalette.c600]
  ///[succeedStateColor] succeed state [SprklInputState.succeed] color
  ///of the border, by default [primaryColors.primary]
  ///[disabledStateColor] disabled state [SprklInputState.disabled] color of the help
  ///text, border and suffix icon, by default [neutralsColors.neutralPalette.c300]
  ///[normalTextColor] text color in normal state,
  ///by default [neutralsColors.neutralPalette.c700]
  ///[normalIconColor] suffix icon color in normal state,
  /// by default [neutralsColors.neutralPalette.c500]
  ///
  ///[hintTextColor] hint text color, by default [neutralsColors.neutralPalette.c400]
  ///[backgroundColor] background color, by default [neutralsColors.white]
  ///
  ///[hintText] hint/placeholder text
  ///[labelText] top label text, if null control height counted without it
  ///[helpText] bottom help text, if null control height counted without it
  ///[initialText] general text, if you need default value
  ///[state] Input state field [SprklInputState]
  ///[size] Input sprkl size field [SprklInputSize], controls the text padding
  ///
  ///[inputFormatters] bridge to [inputFormatters] on [TextField]
  ///[textInputAction] bridge to [textInputAction] on [TextField]
  ///[keyboardType] bridge to [keyboardType] on [TextField]
  ///[borderRadius] border radius
  ///
  factory SprklInput.cleanable({
    Function(String?)? onTextChanged,
    Color? normalStateColor,
    Color? errorStateColor,
    Color? succeedStateColor,
    Color? disabledStateColor,
    Color? normalTextColor,
    Color? normalIconColor,
    Color? hintTextColor,
    Color? backgroundColor,
    String? hintText,
    String? labelText,
    String? helpText,
    String? initialText,
    SprklInputState state = SprklInputState.normal,
    bool hasClearButton = true,
    SprklInputSize size = SprklInputSize.l,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    double? borderRadius,
  }) {
    final style = SprklInputStyle(
      normalStateColor: normalStateColor,
      errorStateColor: errorStateColor,
      succeedStateColor: succeedStateColor,
      disabledStateColor: disabledStateColor,
      normalTextColor: normalTextColor,
      normalIconColor: normalIconColor,
      hintTextColor: hintTextColor,
      backgroundColor: backgroundColor,
      padding: size.toPadding(),
    );

    return SprklInput._private(
      state: state,
      onTextChanged: onTextChanged,
      hintText: hintText,
      labelText: labelText,
      helpText: helpText,
      initialText: initialText,
      style: style,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: false,
      obscuringCharacter: '•',
      type: SprklInputType.clean,
      borderRadius: borderRadius,
    );
  }

  ///
  ///The SprklInput constructor with password suffix icon
  ///and hide/show password logic
  ///
  ///[onTextChanged] called when text changed
  ///
  ///[normalStateColor] normal state [SprklInputState.normal] color of the help
  ///text and border, by default [neutralsColors.neutralPalette.c300]
  ///[errorStateColor] error state [SprklInputState.error] color of the help
  ///text, border and suffix icon, by default [semanticColors.errorPalette.c600]
  ///[succeedStateColor] succeed state [SprklInputState.succeed] color
  ///of the border, by default [primaryColors.primary]
  ///[disabledStateColor] disabled state [SprklInputState.disabled] color of the help
  ///text, border and suffix icon, by default [neutralsColors.neutralPalette.c300]
  ///[normalTextColor] text color in normal state,
  ///by default [neutralsColors.neutralPalette.c700]
  ///[normalIconColor] suffix icon color in normal state,
  /// by default [neutralsColors.neutralPalette.c500]
  ///
  ///[hintTextColor] hint text color, by default [neutralsColors.neutralPalette.c400]
  ///[backgroundColor] background color, by default [neutralsColors.white]
  ///
  ///[hintText] hint/placeholder text
  ///[labelText] top label text, if null control height counted without it
  ///[helpText] bottom help text, if null control height counted without it
  ///[initialText] general text, if you need default value
  ///[state] Input state field [SprklInputState]
  ///[size] Input sprkl size field [SprklInputSize], controls the text padding
  ///
  ///[inputFormatters] bridge to [inputFormatters] on [TextField]
  ///[textInputAction] bridge to [textInputAction] on [TextField]
  ///[keyboardType] bridge to [keyboardType] on [TextField]
  ///[obscuringCharacter] bridge to [obscuringCharacter] on [TextField]
  ///[borderRadius] border radius
  ///
  factory SprklInput.password({
    Function(String?)? onTextChanged,
    Color? normalStateColor,
    Color? errorStateColor,
    Color? succeedStateColor,
    Color? disabledStateColor,
    Color? normalTextColor,
    Color? normalIconColor,
    Color? hintTextColor,
    Color? backgroundColor,
    Color? passwordIconColor,
    String? hintText,
    String? labelText,
    String? helpText,
    String? initialText,
    SprklInputState state = SprklInputState.normal,
    SprklInputSize size = SprklInputSize.l,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    String? obscuringCharacter,
    double? borderRadius,
  }) {
    final style = SprklInputStyle(
      normalStateColor: normalStateColor,
      errorStateColor: errorStateColor,
      succeedStateColor: succeedStateColor,
      disabledStateColor: disabledStateColor,
      normalTextColor: normalTextColor,
      normalIconColor: normalIconColor,
      hintTextColor: hintTextColor,
      backgroundColor: backgroundColor,
      padding: size.toPadding(),
    );

    return SprklInput._private(
      state: state,
      onTextChanged: onTextChanged,
      hintText: hintText,
      labelText: labelText,
      helpText: helpText,
      initialText: initialText,
      style: style,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: false,
      obscuringCharacter: obscuringCharacter ?? '•',
      type: SprklInputType.password,
      passwordIconColor: passwordIconColor,
      borderRadius: borderRadius,
    );
  }

  ///
  ///The SprklInput constructor which allow to create the list of chips
  ///inside the input control
  ///
  ///[onTextChanged] called when text changed
  ///
  ///[normalStateColor] normal state [SprklInputState.normal] color of the help
  ///text and border, by default [neutralsColors.neutralPalette.c300]
  ///[errorStateColor] error state [SprklInputState.error] color of the help
  ///text, border and suffix icon, by default [semanticColors.errorPalette.c600]
  ///[succeedStateColor] succeed state [SprklInputState.succeed] color
  ///of the border, by default [primaryColors.primary]
  ///[disabledStateColor] disabled state [SprklInputState.disabled] color of the help
  ///text, border and suffix icon, by default [neutralsColors.neutralPalette.c300]
  ///[normalTextColor] text color in normal state,
  ///by default [neutralsColors.neutralPalette.c700]
  ///[normalIconColor] suffix icon color in normal state,
  /// by default [neutralsColors.neutralPalette.c500]
  ///
  ///[hintTextColor] hint text color, by default [neutralsColors.neutralPalette.c400]
  ///[backgroundColor] background color, by default [neutralsColors.white]
  ///
  ///[hintText] hint/placeholder text
  ///[labelText] top label text, if null control height counted without it
  ///[helpText] bottom help text, if null control height counted without it
  ///[initialText] general text, if you need default value
  ///[state] Input state field [SprklInputState]
  ///[size] Input sprkl size field [SprklInputSize], controls the text padding
  ///
  ///[inputFormatters] bridge to [inputFormatters] on [TextField]
  ///[textInputAction] bridge to [textInputAction] on [TextField]
  ///[keyboardType] bridge to [keyboardType] on [TextField]
  ///[chipStyle] style of the chips [SprklChipsStyle]
  ///[borderRadius] border radius
  ///
  factory SprklInput.chips({
    Function(String?)? onTextChanged,
    Color? normalStateColor,
    Color? errorStateColor,
    Color? succeedStateColor,
    Color? disabledStateColor,
    Color? normalTextColor,
    Color? normalIconColor,
    Color? backgroundColor,
    String? hintText,
    String? labelText,
    String? helpText,
    SprklInputState state = SprklInputState.normal,
    bool hasClearButton = true,
    SprklInputSize size = SprklInputSize.l,
    List<TextInputFormatter>? inputFormatters,
    TextInputAction? textInputAction,
    TextInputType? keyboardType,
    SprklChipsStyle? chipStyle,
    double? borderRadius,
  }) {
    final style = SprklInputStyle(
      normalStateColor: normalStateColor,
      errorStateColor: errorStateColor,
      succeedStateColor: succeedStateColor,
      disabledStateColor: disabledStateColor,
      normalTextColor: normalTextColor,
      normalIconColor: normalIconColor,
      backgroundColor: backgroundColor,
      padding: size.toPadding(),
    );

    return SprklInput._private(
      state: state,
      onTextChanged: onTextChanged,
      labelText: labelText,
      helpText: helpText,
      hintText: hintText,
      style: style,
      inputFormatters: inputFormatters,
      textInputAction: textInputAction,
      keyboardType: keyboardType,
      obscureText: false,
      type: SprklInputType.chips,
      chipStyle: chipStyle,
      borderRadius: borderRadius,
    );
  }
  @override
  State<SprklInput> createState() => _SprklInputState();
}

class _SprklInputState extends State<SprklInput> {
  final TextEditingController _controller = TextEditingController();
  SprklColorScheme get colors =>
      Theme.of(context).extension<SprklColorScheme>()!;
  SprklTextStyle get styles => Theme.of(context).extension<SprklTextStyle>()!;
  final List<SprklChip> _chips = [];
  bool _passwordVisible = false;

  Color get normalTextColor =>
      widget.style.normalTextColor ??
      colors.neutralsColors!.neutralPalette!.c700;

  Color get normalStateColor =>
      widget.style.normalStateColor ??
      colors.neutralsColors!.neutralPalette!.c300;
  Color get errorStateColor =>
      widget.style.errorStateColor ?? colors.semanticColors!.errorPalette!.c600;
  Color get succeedStateColor =>
      widget.style.succeedStateColor ?? colors.primaryColors!.primary!;
  Color get disabledStateColor =>
      widget.style.disabledStateColor ??
      colors.neutralsColors!.neutralPalette!.c300;

  Color get hintTextColor =>
      widget.style.hintTextColor ?? colors.neutralsColors!.neutralPalette!.c400;

  Color get backgroundColor =>
      widget.style.backgroundColor ?? colors.neutralsColors!.white!;

  Color get currentBorderColor {
    switch (widget.state) {
      case SprklInputState.normal:
        return normalStateColor;
      case SprklInputState.error:
        return errorStateColor;
      case SprklInputState.succeed:
        return succeedStateColor;
      case SprklInputState.disabled:
        return disabledStateColor;
    }
  }

  Color get currentTextColor {
    switch (widget.state) {
      case SprklInputState.normal:
      case SprklInputState.error:
      case SprklInputState.succeed:
        return normalTextColor;
      case SprklInputState.disabled:
        return disabledStateColor;
    }
  }

  Color get currentIconColor {
    switch (widget.state) {
      case SprklInputState.normal:
      case SprklInputState.succeed:
        return widget.style.normalIconColor ??
            colors.neutralsColors!.neutralPalette!.c500;
      case SprklInputState.error:
        return errorStateColor;
      case SprklInputState.disabled:
        return disabledStateColor;
    }
  }

  Color get currentHelpTextColor {
    switch (widget.state) {
      case SprklInputState.error:
        return errorStateColor;
      case SprklInputState.normal:
      case SprklInputState.succeed:
        return normalTextColor;
      case SprklInputState.disabled:
        return disabledStateColor;
    }
  }

  Widget? get suffixWidget {
    switch (widget.type) {
      case SprklInputType.clean:
        return Visibility(
          visible: _controller.text.isNotEmpty,
          child: iconWrapper(
            icon: Icon(Icons.cancel,
                size: SprklSizes.x10, color: currentIconColor),
            onPressed: () {
              setState(() {
                if (widget.state != SprklInputState.disabled) {
                  _controller.clear();
                }
              });
            },
          ),
        );
      case SprklInputType.chips:
      case SprklInputType.custom:
        return null;
      case SprklInputType.password:
        return iconWrapper(
          icon: Icon(
            _passwordVisible ? Icons.visibility : Icons.visibility_off,
            color: widget.passwordIconColor ??
                colors.neutralsColors!.neutralPalette!.c400,
            size: SprklSizes.x10,
          ),
          onPressed: () {
            setState(() {
              if (widget.state != SprklInputState.disabled) {
                _passwordVisible = !_passwordVisible;
              }
            });
          },
        );
      default:
        return null;
    }
  }

  bool get obscureText => widget.type == SprklInputType.password
      ? !_passwordVisible
      : widget.obscureText;

  TextInputAction? get textInputAction => widget.type == SprklInputType.chips
      ? TextInputAction.done
      : widget.textInputAction;

  EdgeInsets get padding =>
      widget.style.padding ??
      const EdgeInsets.symmetric(
        horizontal: SprklSizes.x8,
        vertical: SprklSizes.x6,
      );

  EdgeInsets get wrapPadding =>
      widget.type != SprklInputType.chips || _chips.isEmpty
          ? EdgeInsets.zero
          : widget.style.padding == null
              ? const EdgeInsets.only(
                  left: SprklSizes.x8,
                  right: SprklSizes.x8,
                  top: SprklSizes.x6,
                )
              : EdgeInsets.only(
                  left: widget.style.padding!.left,
                  right: widget.style.padding!.right,
                  top: widget.style.padding!.top,
                  bottom: widget.style.padding!.bottom,
                );

  double get borderRadius => widget.borderRadius ?? SprklSizes.x4;

  Widget iconWrapper(
      {required Icon icon, required void Function()? onPressed}) {
    return GestureDetector(onTap: onPressed, child: icon);
  }

  @override
  void initState() {
    super.initState();

    if ((widget.initialText?.isNotEmpty ?? false) && _controller.text.isEmpty) {
      _controller.text = widget.initialText ?? '';
    }

    _controller.addListener(() {
      if (widget.onTextChanged != null) {
        if (widget.state != SprklInputState.disabled) {
          widget.onTextChanged!(_controller.text);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null)
          Container(
            padding: const EdgeInsets.only(bottom: SprklSizes.x2),
            child: Text(widget.labelText!,
                style: styles.labelS!.copyWith(
                  color: currentTextColor,
                )),
          ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
            border: Border.all(
              color: widget.hasBorder ? currentBorderColor : Colors.transparent,
              width: 1,
            ),
            color: backgroundColor,
          ),
          child: Row(
            children: [
              Visibility(
                  visible: widget.prefix != null,
                  child: Container(
                    padding: EdgeInsets.only(left: padding.left),
                    child: widget.prefix ?? Container(),
                  )),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: wrapPadding,
                    child: Wrap(
                        spacing: SprklSizes.x1,
                        runSpacing: SprklSizes.x1,
                        children: [
                          ..._chips,
                        ]),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextField(
                      enabled: widget.state != SprklInputState.disabled,
                      style: styles.bodyM!.copyWith(color: currentTextColor),
                      decoration: InputDecoration(
                        suffixIcon: suffixWidget,
                        border: InputBorder.none,
                        hintText: widget.hintText,
                        hintStyle: styles.bodyM!.copyWith(color: hintTextColor),
                        isDense: true,
                        contentPadding: padding,
                      ),
                      controller: _controller,
                      inputFormatters: widget.inputFormatters,
                      textInputAction: textInputAction,
                      keyboardType: widget.keyboardType,
                      obscureText: obscureText,
                      onSubmitted: (text) {
                        if (widget.type == SprklInputType.chips) {
                          _chips.add(SprklChip.empty(
                            text: text,
                            primary: widget.chipStyle?.primary,
                            iconColor: widget.chipStyle?.iconColor,
                            textColor: widget.chipStyle?.textColor,
                            textStyle: widget.chipStyle?.textStyle,
                            closeClicked: () {
                              setState(() {
                                _chips.removeWhere((item) => item.text == text);
                              });
                            },
                          ));
                          _controller.clear();
                          setState(() {});
                        }
                      },
                      obscuringCharacter: widget.obscuringCharacter,
                    ),
                  ),
                ],
              )),
              Visibility(
                  visible: widget.suffixIcon != null &&
                      widget.type == SprklInputType.custom,
                  child: Container(
                    padding: EdgeInsets.only(right: padding.right),
                    child: widget.suffixIcon ?? Container(),
                  )),
              Visibility(
                visible:
                    widget.type == SprklInputType.chips && _chips.isNotEmpty,
                child: Padding(
                  padding: EdgeInsets.only(right: wrapPadding.right),
                  child: iconWrapper(
                    icon: Icon(Icons.cancel,
                        size: SprklSizes.x10, color: currentIconColor),
                    onPressed: () {
                      setState(() {
                        if (widget.state != SprklInputState.disabled) {
                          _chips.clear();
                          _controller.selection = TextSelection.fromPosition(
                              TextPosition(offset: _controller.text.length));
                        }
                      });
                    },
                  ),
                ),
              )
            ],
          ),
        ),
        if (widget.helpText != null)
          Container(
            padding: const EdgeInsets.only(top: SprklSizes.x2),
            child: Text(
              widget.helpText!,
              style: styles.labelS!.copyWith(
                fontSize: 11,
                color: currentHelpTextColor,
              ),
            ),
          ),
      ],
    );
  }
}
