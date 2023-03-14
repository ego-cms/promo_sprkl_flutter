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

import 'package:thesprkl_template/models/message_model.dart';

class ContactModel {
  final String title;
  final String subTitle;
  final String asset;
  final String time;
  final List<MessageModel> messages;

  ContactModel({
    required this.title,
    required this.subTitle,
    required this.asset,
    required this.time,
    required this.messages,
  });
}
