import 'package:connex/global%20variables/colors.dart';
import 'package:connex/presentation/screens/bottom%20navbar/bottom_nav_items.dart';
import 'package:connex/presentation/screens/chat/chat.dart';
import 'package:connex/presentation/screens/home/widgets/home.dart';
import 'package:connex/presentation/screens/lights/lights.dart';
import 'package:connex/presentation/screens/profile/profile.dart';
import 'package:connex/presentation/screens/search/search.dart';
import 'package:flutter/material.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  int screenIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final screens = [
      const Home(),
      const Lights(),
      const Search(),
      const Chat(),
      const Profile(),
    ];
    return Scaffold(
      backgroundColor:
          screenIndex == 1 ? Colors.transparent : ConstantColors.kWhite,
      body: screens[screenIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          width: width,
          height: 68,
          decoration: BoxDecoration(
            color: ConstantColors.kWhite,
            borderRadius: BorderRadius.circular(25),
            boxShadow: [
              BoxShadow(
                  color: ConstantColors.kBlack.withOpacity(0.2),
                  offset: const Offset(0, 8),
                  blurRadius: 20,
                  spreadRadius: 3),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomNavItem(
                isSelected: screenIndex == 0,
                icon: Icon(
                  Icons.home,
                  color: screenIndex == 0
                      ? ConstantColors.kWhite
                      : ConstantColors.gradientColor2,
                ),
                onPressed: () {
                  setState(() {
                    screenIndex = 0;
                  });
                },
              ),
              BottomNavItem(
                isSelected: screenIndex == 1,
                icon: Icon(
                  Icons.video_library,
                  color: screenIndex == 1
                      ? ConstantColors.kWhite
                      : ConstantColors.gradientColor2,
                ),
                onPressed: () {
                  setState(() {
                    screenIndex = 1;
                  });
                },
              ),
              BottomNavItem(
                isSelected: screenIndex == 2,
                icon: Icon(
                  Icons.search,
                  color: screenIndex == 2
                      ? ConstantColors.kWhite
                      : ConstantColors.gradientColor2,
                ),
                onPressed: () {
                  setState(() {
                    screenIndex = 2;
                  });
                },
              ),
              BottomNavItem(
                isSelected: screenIndex == 3,
                icon: Icon(
                  Icons.message,
                  color: screenIndex == 3
                      ? ConstantColors.kWhite
                      : ConstantColors.gradientColor2,
                ),
                onPressed: () {
                  setState(() {
                    screenIndex = 3;
                  });
                },
              ),
              BottomNavItem(
                isSelected: screenIndex == 4,
                icon: Icon(
                  Icons.people_alt_outlined,
                  color: screenIndex == 4
                      ? ConstantColors.kWhite
                      : ConstantColors.gradientColor2,
                ),
                onPressed: () {
                  setState(() {
                    setState(() {
                      screenIndex = 4;
                    });
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
