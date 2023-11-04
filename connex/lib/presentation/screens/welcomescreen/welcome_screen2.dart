import 'package:flutter/material.dart';

class WelcomeScreen2 extends StatelessWidget {
  const WelcomeScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: const [
          Image(
            image: AssetImage("images/welcomescreen2.png"),
          ),
        ],
      ),
    );
  }
}
