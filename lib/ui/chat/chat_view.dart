import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:stacked/stacked.dart';
import 'package:test2/models/chat_model.dart';
import 'package:test2/ui/chat/chat_viewmodel.dart';
import 'package:test2/ui/chat/widgets/chat_appbar.dart';
import 'package:test2/ui/pickup_date/pickup_date_view.dart';
import 'package:test2/utils/extensions.dart';
import 'package:test2/widgets/app_bar.dart';
import 'package:test2/widgets/custom_drawer.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => ChatViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: ChatAppBar(),
            drawer: const CustomDrawer(),
            body: Column(
              children: [
                Expanded(
                    child: ListView.builder(
                  itemCount: viewModel.chats.length,
                  padding: const EdgeInsets.all(15),
                  reverse: true,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Column(
                        crossAxisAlignment: viewModel.chats[index].isMyChat
                            ? CrossAxisAlignment.end
                            : CrossAxisAlignment.start,
                        children: [
                          viewModel.chats[index].isMyChat
                              ? const SizedBox()
                              : Padding(
                                  padding: const EdgeInsets.only(bottom: 8.0),
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 15,
                                        backgroundImage: AssetImage(viewModel
                                            .chats[index].senderImage!),
                                      ),
                                      const SizedBox(width: 3),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(viewModel
                                              .chats[index].senderName!),
                                          Text(viewModel.chats[index].time!)
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                          Container(
                            padding: const EdgeInsets.only(
                                top: 10, bottom: 25, left: 15, right: 15),
                            constraints: BoxConstraints(
                              maxWidth: context.width * 0.8,
                            ),
                            decoration: BoxDecoration(
                                color: viewModel.chats[index].isMyChat
                                    ? Colors.blue
                                    : Colors.white,
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(4),
                                  topLeft: Radius.circular(20),
                                  bottomLeft: Radius.circular(4),
                                  bottomRight: Radius.circular(20),
                                )),
                            child: Text(viewModel.chats[index].text,
                                style: TextStyle(
                                    color: viewModel.chats[index].isMyChat
                                        ? Colors.white
                                        : Colors.black)),
                          ),
                        ],
                      ),
                    );
                  },
                )),
                Row(
                  children: [
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        controller: viewModel.fieldController,
                        decoration: InputDecoration(
                          hintText: "Write a reply",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ),
                    ),
                    const SizedBox(width: 8),
                    const Icon(Icons.face),
                    const SizedBox(width: 8),
                    const Icon(Icons.image),
                    const SizedBox(width: 8),
                    const Icon(Icons.attachment),
                    const SizedBox(width: 8),
                    IconButton(
                        onPressed: () {
                          if (viewModel.fieldController.text.isEmpty) {
                            return;
                          }
                          viewModel.chats.insert(
                              0,
                              Chat(
                                  text: viewModel.fieldController.text,
                                  isMyChat: true));
                          viewModel.fieldController.clear();
                          viewModel.notifyListeners();
                        },
                        icon: const Icon(Icons.send))
                  ],
                )
              ],
            ),
          );
        });
  }
}
