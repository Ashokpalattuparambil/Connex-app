import 'package:connex/global%20variables/colors.dart';
import 'package:connex/presentation/screens/welcomescreen/welcome_screen1.dart';
import 'package:connex/presentation/screens/welcomescreen/welcome_screen2.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  late final TabController controller;
  int _index = 0;
  @override
  void initState() {
    super.initState();
    controller = TabController(
      length: 2,
      vsync: this,
      initialIndex: _index,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> welcomescreens = const [
      WelcomeScreen1(),
      WelcomeScreen2(),
    ];
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
      child: Stack(
        alignment: Alignment.center,
        children: [
          TabBarView(controller: controller, children: welcomescreens),
          Positioned(
            bottom: 100,
            child: TabPageSelector(
              controller: controller,
              color: ConstantColors.kWhite.withOpacity(.1),
              selectedColor: ConstantColors.kWhite,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(30),
            child: Align(
              alignment: Alignment.bottomRight,
              child: SizedBox(
                width: 80,
                height: 45,
                child: ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          ConstantColors.kWhite),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ),
                    onPressed: () {
                      (_index != welcomescreens.length - 1)
                          ? _index++
                          : Navigator.pushNamed(context, '/signup');
                      controller.animateTo(_index);
                    },
                    child: _index == 0
                        ? const Text(
                            "Go",
                            style: TextStyle(color: ConstantColors.kBlack),
                          )
                        : const Text(
                            "Signup",
                            style: TextStyle(color: ConstantColors.kBlack),
                          )),
              ),
            ),
          )
        ],
      ),
    );
  }
}
