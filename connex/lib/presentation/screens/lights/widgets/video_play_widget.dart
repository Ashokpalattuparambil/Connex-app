import 'package:connex/global%20variables/colors.dart';
import 'package:flutter/material.dart';

class VideoPlayWidget extends StatelessWidget {
  const VideoPlayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: NetworkImage(
                "https://images.unsplash.com/photo-1585433013633-75f802e06715?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            fit: BoxFit.cover),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, top: 30),
              child: Text(
                "Lights",
                style: TextStyle(
                    color: ConstantColors.kWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 150),
                child: Column(
                  children: const [
                    Icon(
                      Icons.play_arrow_outlined,
                      color: ConstantColors.kWhite,
                      size: 70,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 30),
                      child: Icon(
                        Icons.volume_up_outlined,
                        color: ConstantColors.kWhite,
                        size: 45,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: SizedBox(
                  width: 60,
                  height: 400,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Icon(
                        Icons.favorite_border_outlined,
                        color: ConstantColors.kWhite,
                        size: 27,
                      ),
                      Icon(
                        Icons.comment_outlined,
                        color: ConstantColors.kWhite,
                        size: 27,
                      ),
                      Icon(
                        Icons.share_outlined,
                        color: ConstantColors.kWhite,
                        size: 27,
                      ),
                      CircleAvatar(
                        radius: 24,
                        backgroundImage: NetworkImage(
                            "https://images.unsplash.com/photo-1642978743489-26d9f57ffdc1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80"),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
