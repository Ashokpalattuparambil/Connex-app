import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

class SettingsOptionHeadingWidget extends StatelessWidget {
  final Icon icon;
  final VoidCallback onpressed;
  final String heading;
  const SettingsOptionHeadingWidget(
      {super.key,
      required this.icon,
      required this.heading,
      required this.onpressed});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: ConstDimensions.kWidth,
        ),
        IconButton(onPressed: onpressed, icon: icon),
        const SizedBox(
          width: ConstDimensions.kWidth,
        ),
        Text(
          heading,
          style: const TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
