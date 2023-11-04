import 'package:connex/global%20variables/colors.dart';
import 'package:connex/presentation/screens/chat/chatinterface/widgets/message_input_container_widget.dart';
import 'package:connex/presentation/screens/chat/chatinterface/widgets/messagelist_container_widget.dart';
import 'package:flutter/material.dart';

class ChatInterfaceBodyWidget extends StatelessWidget {
  const ChatInterfaceBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const Divider(
          color: ConstantColors.gradientColor2,
        ),
        MessageListContainerWidget(),
        MessageInputContainerWidget(width: width),
      ],
    );
  }
}
