import 'package:connex/global%20variables/colors.dart';
import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

class MessageInputContainerWidget extends StatelessWidget {
  const MessageInputContainerWidget({
    Key? key,
    required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 65,
      width: width,
      decoration: BoxDecoration(
        color: ConstantColors.kWhite,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
              color: ConstantColors.kBlack.withOpacity(0.2),
              offset: const Offset(0, 8),
              blurRadius: 20,
              spreadRadius: 3),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: ConstantColors.kGray.withOpacity(0.2),
            radius: 24,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.mic,
                color: ConstantColors.gradientColor2,
              ),
            ),
          ),
          const SizedBox(
            width: ConstDimensions.kWidth,
          ),
          Expanded(
            child: TextField(
              cursorColor: ConstantColors.gradientColor2,
              decoration: InputDecoration(
                filled: true,
                hintText: "message...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.photo,
              color: ConstantColors.gradientColor2,
            ),
          )
        ],
      ),
    );
  }
}
