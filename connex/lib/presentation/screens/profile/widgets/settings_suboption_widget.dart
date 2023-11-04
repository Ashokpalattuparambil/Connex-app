import 'package:connex/global%20variables/colors.dart';
import 'package:connex/global%20variables/dimensions.dart';
import 'package:flutter/material.dart';

class SettingsSubOptionWidget extends StatefulWidget {
  final String text;
  const SettingsSubOptionWidget({super.key, required this.text});

  @override
  State<SettingsSubOptionWidget> createState() =>
      _SettingsSubOptionWidgetState();
}

class _SettingsSubOptionWidgetState extends State<SettingsSubOptionWidget> {
  bool switched = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            widget.text,
          ),
          Switch(
            activeColor: ConstantColors.gradientColor2,
            value: switched,
            onChanged: (bool value) {
              setState(() {
                switched = value;
                value = !value;
              });
            },
          ),
        ],
      ),
    );
  }
}
