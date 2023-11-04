import 'package:connex/global%20variables/colors.dart';
import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            SizedBox(
              width: ConstDimensions.kWidth,
            ),
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  "https://images.unsplash.com/photo-1552374196-c4e7ffc6e126?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80"),
            ),
            SizedBox(
              width: ConstDimensions.kWidth,
            ),
            Text(
              "john",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.only(
            left: 40,
            top: 20,
          ),
          child: Text(
            "Endless rides",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
          ),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.width / 1.3,
          width: MediaQuery.of(context).size.width,
          child: Image.network(
              "https://images.unsplash.com/photo-1511358096168-2d7482c9272f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
        ),
        Row(
          children: [
            Row(
              children: const [
                SizedBox(
                  width: ConstDimensions.kWidth50,
                ),
                Icon(Icons.favorite_border),
                SizedBox(
                  width: ConstDimensions.kWidth,
                ),
                Text(
                  "378",
                  style: TextStyle(color: ConstantColors.gradientColor1),
                ),
                SizedBox(
                  width: ConstDimensions.kWidth,
                ),
                Text("Likes")
              ],
            ),
            Row(
              children: const [
                SizedBox(
                  width: ConstDimensions.kWidth50,
                ),
                Icon(Icons.draw_outlined),
                SizedBox(
                  width: ConstDimensions.kWidth,
                ),
                Text(
                  "20",
                  style: TextStyle(color: ConstantColors.gradientColor1),
                ),
                SizedBox(
                  width: ConstDimensions.kWidth,
                ),
                Text("Comments"),
              ],
            )
          ],
        ),
      ],
    );
  }
}
