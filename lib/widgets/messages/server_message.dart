import 'package:flutter/material.dart';
import 'package:thesprkl_template/widgets/messages/base_message.dart';

class ServerMessage extends BaseMessage {
  const ServerMessage({
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
  Alignment get alignment => Alignment.topLeft;

  @override
  BoxDecoration get decoration => BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
          topRight: Radius.circular(16),
        ),
      );

  @override
  BorderRadius get imageBorderRadius => const BorderRadius.only(
        bottomLeft: Radius.circular(12),
      );
}
