import 'package:connex/global%20variables/colors.dart';
import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

class ProfileRowWidget extends StatelessWidget {
  const ProfileRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: const [
            Text(
              "2346",
              style: TextStyle(
                  fontSize: 17,
                  color: ConstantColors.gradientColor2,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: ConstDimensions.kHeight,
            ),
            Text(
              "fans",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        Container(
          height: 125,
          width: .7,
          color: ConstantColors.gradientColor2,
        ),
        Column(
          children: [
            CircleAvatar(
              radius: 46,
              backgroundColor: ConstantColors.kGray.withOpacity(0.4),
              child: const CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1595152452543-e5fc28ebc2b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 28),
              child: Row(
                children: [
                  const Text(
                    "Adam",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(
                    width: ConstDimensions.kWidth,
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: ConstantColors.kGray.withOpacity(0.2),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.draw,
                        size: 18,
                        color: ConstantColors.kBlack,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Container(
          height: 125,
          width: .7,
          color: ConstantColors.gradientColor2,
        ),
        Column(
          children: const [
            Text(
              "988",
              style: TextStyle(
                fontSize: 17,
                color: ConstantColors.gradientColor2,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: ConstDimensions.kHeight,
            ),
            Text(
              "fan of",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
