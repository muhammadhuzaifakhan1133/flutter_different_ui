class Chat {
  final String text;
  final bool isMyChat;
  final String? senderImage;
  final String? senderName;
  final String? time;

  Chat({
    required this.text,
    required this.isMyChat,
    this.senderImage,
    this.senderName,
    this.time,
  });
}
