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
