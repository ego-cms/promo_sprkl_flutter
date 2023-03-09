import 'package:flutter/material.dart';
import 'package:thesprkl_template/widgets/messages/base_message.dart';

class UserMessage extends BaseMessage {
  const UserMessage({
    super.key,
    required super.message,
    required super.date,
    required super.smallPadding,
    required super.contentColor,
    required super.isRead,
    required this.backgroundColor,
  });

  final Color backgroundColor;

  @override
  Alignment get alignment => Alignment.topRight;

  @override
  BoxDecoration get decoration => BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      );

  @override
  BorderRadius get imageBorderRadius => const BorderRadius.only(
        bottomLeft: Radius.circular(12),
        topLeft: Radius.circular(12),
      );
}
