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
import 'package:flutter/services.dart';
import 'package:rive/rive.dart';
import 'package:thesprkl_template/animations/assets.dart';
import 'package:thesprkl_template/services/event_service.dart';
import 'package:thesprkl_template/services/models/animate_wrapper_action.dart';
import 'package:thesprkl_template/services/models/animate_wrapper_args.dart';

class AnimateWrapper extends StatefulWidget {
  const AnimateWrapper({
    Key? key,
    this.fit,
    this.riveAnimationPath,
    this.child,
    this.backgroundColor,
  }) : super(key: key);

  final BoxFit? fit;
  final String? riveAnimationPath;
  final Widget? child;
  final Color? backgroundColor;

  @override
  State<AnimateWrapper> createState() => _AnimateWrapperState();
}

class _AnimateWrapperState extends State<AnimateWrapper> {
  StateMachineController? _controller;
  Artboard? _riveArtboard;

  SMIInput<double>? _action;
  SMIInput<bool>? _error;
  SMIInput<bool>? _good;
  SMIInput<bool>? _clear;

  void updateAnimation(AnimateWrapperAction action) {
    switch (action) {
      case AnimateWrapperAction.action:
        _clear?.change(true);
        _action?.change(100);
        break;
      case AnimateWrapperAction.error:
        _error?.change(true);
        break;
      case AnimateWrapperAction.succeed:
        _good?.change(true);
        break;
      case AnimateWrapperAction.clear:
        _clear?.change(true);
        break;
      default:
        break;
    }
  }

  void initRiveAnimation(ByteData data) {
    try {
      final file = RiveFile.import(data);

      final artboard = file.mainArtboard;
      _controller = StateMachineController.fromArtboard(
          artboard, AssetsConstants.riveControllerName);
      if (_controller != null) {
        artboard.addController(_controller!);

        _action = _controller!.findInput(AssetsConstants.riveInputAction);
        _error = _controller!.findInput(AssetsConstants.riveInputError);
        _good = _controller!.findInput(AssetsConstants.riveInputGood);
        _clear = _controller!.findInput(AssetsConstants.riveInputClear);
      }
      setState(() => _riveArtboard = artboard);
    } catch (_) {}
  }

  @override
  void initState() {
    super.initState();
    EventService().subscribe<AnimateWrapperArgs>((args) {
      updateAnimation(args.action);
    });

    rootBundle
        .load(
      widget.riveAnimationPath == null
          ? AssetsConstants.riveBackgroundAsset
          : widget.riveAnimationPath!,
    )
        .then(
      (data) {
        initRiveAnimation(data);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        if (widget.backgroundColor != null)
          Container(color: widget.backgroundColor),
        if (_riveArtboard != null)
          Rive(
            fit: BoxFit.fitHeight,
            artboard: _riveArtboard!,
          ),
        if (widget.child != null) widget.child!
      ],
    );
  }
}
