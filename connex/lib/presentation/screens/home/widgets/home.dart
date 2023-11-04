import 'package:connex/global%20variables/colors.dart';
import 'package:connex/presentation/screens/home/widgets/custom_button.dart';
import 'package:connex/presentation/screens/home/widgets/post.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ConstantColors.kWhite,
          leading: Image.asset(
            "images/Logo.png",
            width: 68,
            height: 68,
          ),
          elevation: 0,
          title: const Text(
            "connex",
          ),
          titleTextStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: ConstantColors.kBlack),
          actions: const [
            Padding(
              padding: EdgeInsets.all(7),
              child: CustomButton(),
            ),
          ],
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: PostWidget(),
            );
          },
          itemCount: 10,
        ));
  }
}
