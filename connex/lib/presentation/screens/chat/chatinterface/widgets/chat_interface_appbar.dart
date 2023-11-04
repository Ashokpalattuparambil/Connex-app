import 'package:connex/global%20variables/colors.dart';
import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

class ChatInterfaceAppBar extends StatelessWidget {
  const ChatInterfaceAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      elevation: 0,
      backgroundColor: ConstantColors.kWhite,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(
          Icons.arrow_back_ios,
          color: ConstantColors.gradientColor2,
        ),
      ),
      title: Row(
        children: [
          const CircleAvatar(
            radius: 25,
            backgroundImage: NetworkImage(
                "https://images.unsplash.com/photo-1508243529287-e21914733111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
          ),
          const SizedBox(
            width: ConstDimensions.kWidth20,
          ),
          Column(
            children: const [
              Text(
                "Bob marcus",
                style: TextStyle(
                    color: ConstantColors.kBlack,
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              Text(
                "Active 10 min ago",
                style: TextStyle(color: ConstantColors.kGray, fontSize: 12),
              )
            ],
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.phone,
                color: ConstantColors.gradientColor2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                right: 20,
              ),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.video_call_outlined,
                  color: ConstantColors.gradientColor2,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
