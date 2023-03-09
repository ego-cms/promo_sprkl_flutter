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
