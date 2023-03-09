import 'package:flutter/material.dart';
import 'package:sprkl_flutter/sprkl_flutter.dart';

class TooltipShapeBorder extends ShapeBorder {
  const TooltipShapeBorder({required this.type});

  final SprklTooltipPosition type;

  bool get isVertical =>
      type == SprklTooltipPosition.bottom || type == SprklTooltipPosition.top;

  double get arrowWidth => isVertical ? 12 : 6;
  double get arrowHeight => isVertical ? 6 : 12;

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) => Path();

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    final rectangleWithArrow = Path()
      ..addRRect(RRect.fromRectAndRadius(rect, const Radius.circular(8)));

    switch (type) {
      case SprklTooltipPosition.right:
        rectangleWithArrow
          ..moveTo(rect.centerLeft.dx, rect.centerLeft.dy + arrowHeight / 2)
          ..relativeLineTo(-arrowWidth, -arrowHeight / 2)
          ..relativeLineTo(arrowWidth, -arrowHeight / 2);
        break;
      case SprklTooltipPosition.left:
        rectangleWithArrow
          ..moveTo(rect.centerRight.dx, rect.centerRight.dy - arrowHeight / 2)
          ..relativeLineTo(arrowWidth, arrowHeight / 2)
          ..relativeLineTo(-arrowWidth, arrowHeight / 2);
        break;
      case SprklTooltipPosition.bottom:
        rectangleWithArrow
          ..moveTo(rect.bottomRight.dx - rect.width / 2 - 6, rect.bottomLeft.dy)
          ..relativeLineTo(arrowWidth / 2, arrowHeight)
          ..relativeLineTo(arrowWidth / 2, -arrowHeight);
        break;
      case SprklTooltipPosition.top:
        rectangleWithArrow
          ..moveTo(rect.bottomRight.dx - rect.width / 2 - 6, rect.topLeft.dy)
          ..relativeLineTo(arrowWidth / 2, -arrowHeight)
          ..relativeLineTo(arrowWidth / 2, arrowHeight);
        break;
    }

    return rectangleWithArrow;
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..color = Colors.transparent
      ..style = PaintingStyle.stroke
      ..strokeWidth = 0;

    final path = getOuterPath(rect);
    canvas.drawPath(path, paint);
  }

  @override
  ShapeBorder scale(double t) => this;
}
