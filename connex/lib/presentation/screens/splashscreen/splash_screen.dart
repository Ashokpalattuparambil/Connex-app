import 'dart:async';

import 'package:connex/global%20variables/colors.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = const Duration(seconds: 2);
    return Timer(duration, autoRoute);
  }

  autoRoute() {
    Navigator.pushNamed(context, '/welcomescreen');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            ConstantColors.gradientColor2,
            ConstantColors.gradientColor3,
          ],
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          Image(
            width: 65,
            height: 65,
            image: AssetImage('images/splashlogo.png'),
          ),
          Align(
            alignment: Alignment.center,
            child: CircularProgressIndicator(
              color: ConstantColors.kWhite,
            ),
          ),
        ],
      ),
    );
  }
}
