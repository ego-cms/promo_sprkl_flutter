class MessageModel {
  final String message;
  final String date;
  final bool isOwner;

  MessageModel(
      {required this.message, required this.date, this.isOwner = false});
}
