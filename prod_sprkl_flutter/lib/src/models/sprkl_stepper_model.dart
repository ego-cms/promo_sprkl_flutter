import 'package:flutter/material.dart';

abstract class SprklStepperModel {}

class SprklStepperModelLine extends SprklStepperModel {
  final String title;
  final String subTitle;

  SprklStepperModelLine({required this.title, required this.subTitle});
}

class SprklStepperModelIcon extends SprklStepperModel {
  final IconData iconData;

  SprklStepperModelIcon(this.iconData);
}

class SprklStepperModelCustom extends SprklStepperModel {
  final Widget child;

  SprklStepperModelCustom(this.child);
}

class SprklStepperModelText extends SprklStepperModel {
  final String text;

  SprklStepperModelText(this.text);
}
