import 'package:connex/global%20variables/dimensions.dart';
import 'package:connex/presentation/screens/chat/chatinterface/widgets/sender_reciever_message.dart';
import 'package:flutter/material.dart';

class MessageListContainerWidget extends StatelessWidget {
  final List<Map<String, String>> usermessages = [
    {"message": "Hi bruh", "sender": "true", "reciever": "false"},
    {"message": "yeah bro", "sender": "false", "reciever": "true"},
    {
      "message": "have you time for a movie?",
      "sender": "true",
      "reciever": "false"
    },
    {"message": "which movie man ?", "sender": "false", "reciever": "true"},
    {"message": "avatar way of water", "sender": "true", "reciever": "false"},
    {
      "message": "absolutely bruh it's master piece!",
      "sender": "false",
      "reciever": "true",
    },
  ];
  MessageListContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return SenderRecieverMessageWidget(
            chatmessage: usermessages[index]["message"].toString(),
          );
        },
        itemCount: usermessages.length,
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: ConstDimensions.kHeight,
          );
        },
      ),
    );
  }
}
