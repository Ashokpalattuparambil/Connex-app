import 'package:connex/presentation/screens/chat/chatinterface/widgets/chat_interface_appbar.dart';
import 'package:connex/presentation/screens/chat/chatinterface/widgets/chat_interface_body_widget.dart';
import 'package:flutter/material.dart';

class ChatInterface extends StatelessWidget {
  const ChatInterface({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(75),
        child: ChatInterfaceAppBar(),
      ),
      body: ChatInterfaceBodyWidget(),
    );
  }
}
