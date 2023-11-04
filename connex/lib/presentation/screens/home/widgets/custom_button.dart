import 'package:connex/global%20variables/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 62,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ConstantColors.gradientColor2,
            ConstantColors.gradientColor3,
          ],
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(Icons.add),
    );
  }
}
