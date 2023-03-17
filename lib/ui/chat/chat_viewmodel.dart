import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:test2/models/chat_model.dart';

class ChatViewModel extends BaseViewModel {
  TextEditingController fieldController = TextEditingController();
  List<Chat> chats = [
    Chat(
        text: "Of course. Are you interested in month-to-month or long term",
        isMyChat: true),
    Chat(
        text: "Could you tell me more about your subscription options",
        senderImage: "assets/images/sender.jpg",
        senderName: "Isla",
        time: "1m ago",
        isMyChat: false),
    Chat(
        text: "Of course. Are you interested in month-to-month or long term",
        isMyChat: true),
    Chat(
        text: "Could you tell me more about your subscription options",
        senderImage: "assets/images/sender.jpg",
        senderName: "Isla",
        time: "1m ago",
        isMyChat: false),
    Chat(
        text: "Of course. Are you interested in month-to-month or long term",
        isMyChat: true),
    Chat(
        text: "Of course. Are you interested in month-to-month or long term",
        isMyChat: true),
  ];
}
