import 'package:flutter/material.dart';
import 'package:thesprkl_template/models/message_model.dart';
import 'package:thesprkl_template/widgets/messages/server_message.dart';
import 'package:thesprkl_template/widgets/messages/user_message.dart';

class MessageSelector extends StatelessWidget {
  final MessageModel message;
  final bool smallPadding;
  final Color backgroundColor;
  final Color contentColor;
  final bool isRead;

  const MessageSelector({
    Key? key,
    required this.message,
    required this.smallPadding,
    required this.backgroundColor,
    required this.contentColor,
    required this.isRead,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return message.isOwner
        ? UserMessage(
            message: message.message,
            date: message.date,
            smallPadding: smallPadding,
            backgroundColor: backgroundColor,
            contentColor: contentColor,
            isRead: isRead,
          )
        : ServerMessage(
            message: message.message,
            date: message.date,
            smallPadding: smallPadding,
            backgroundColor: backgroundColor,
            contentColor: contentColor,
            isRead: isRead,
          );
  }
}
