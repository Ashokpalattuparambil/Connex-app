import 'package:connex/global%20variables/colors.dart';
import 'package:flutter/material.dart';

class SenderRecieverMessageWidget extends StatelessWidget {
  final String chatmessage;

  const SenderRecieverMessageWidget({
    super.key,
    required this.chatmessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        UnconstrainedBox(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Container(
              padding: const EdgeInsets.all(20),
              width: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    ConstantColors.gradientColor2,
                    ConstantColors.gradientColor3,
                  ],
                ),
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
              child: Text(
                chatmessage,
                style:
                    const TextStyle(color: ConstantColors.kWhite, fontSize: 15),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
