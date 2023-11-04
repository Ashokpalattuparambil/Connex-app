import 'package:connex/global%20variables/colors.dart';
import 'package:flutter/material.dart';

class BottomNavItem extends StatelessWidget {
  final Widget icon;
  final VoidCallback onPressed;
  final bool isSelected;

  const BottomNavItem({
    super.key,
    required this.icon,
    required this.onPressed,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 250),
            curve: Curves.easeInCubic,
            width: 66,
            height: 38,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: isSelected
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ConstantColors.gradientColor2,
                        ConstantColors.gradientColor3,
                      ],
                    )
                  : const LinearGradient(
                      colors: [
                        ConstantColors.kWhite,
                        ConstantColors.kWhite,
                      ],
                    ),
            ),
            child: icon,
          ),
          Container(
            width: 40,
            height: 3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              gradient: isSelected
                  ? LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        ConstantColors.gradientColor2,
                        ConstantColors.gradientColor3,
                      ],
                    )
                  : const LinearGradient(
                      colors: [
                        ConstantColors.kWhite,
                        ConstantColors.kWhite,
                      ],
                    ),
            ),
          ),
        ],
      ),
    );
  }
}
