import 'package:connex/global%20variables/colors.dart';
import 'package:connex/global%20variables/dimensions.dart';
import 'package:connex/presentation/screens/profile/widgets/settings_option_heading_widget.dart';
import 'package:connex/presentation/screens/profile/widgets/settings_suboption_widget.dart';
import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const SizedBox(
            height: ConstDimensions.kHeight,
          ),
          Row(
            children: [
              const SizedBox(
                width: ConstDimensions.kWidth,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: ConstantColors.gradientColor2,
                ),
              ),
              const Text(
                "Settings",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              ),
              const SizedBox(
                width: ConstDimensions.kWidth40,
              ),
              const Icon(
                Icons.settings,
                color: ConstantColors.gradientColor2,
              ),
            ],
          ),
          const SizedBox(
            height: ConstDimensions.kHeight,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Divider(
              color: ConstantColors.gradientColor2,
            ),
          ),
          const SizedBox(
            height: ConstDimensions.kHeight40,
          ),
          SettingsOptionHeadingWidget(
              onpressed: () {},
              icon: const Icon(
                Icons.save,
                color: ConstantColors.gradientColor2,
              ),
              heading: "Saved"),
          const SizedBox(
            height: ConstDimensions.kHeight20,
          ),
          SettingsOptionHeadingWidget(
              onpressed: () {},
              icon: const Icon(
                Icons.notifications,
                color: ConstantColors.gradientColor2,
              ),
              heading: "Notifications"),
          const SettingsSubOptionWidget(
              text: "Other post, comment notification"),
          const SettingsSubOptionWidget(text: "Screentime exceed notification"),
          SettingsOptionHeadingWidget(
              onpressed: () {},
              icon: const Icon(
                Icons.highlight,
                color: ConstantColors.gradientColor2,
              ),
              heading: "Advanced features"),
          const SettingsSubOptionWidget(text: "App usage controller"),
          const SettingsSubOptionWidget(text: "Timer autoclose feature"),
          const AutoCloseDurationTimeSetterWidget(),
          const SettingsSubOptionWidget(
              text: "Floating app usage time indicator in  \n background"),
          SettingsOptionHeadingWidget(
            icon: const Icon(
              Icons.hub,
              color: ConstantColors.gradientColor2,
            ),
            heading: "Intelligent like",
            onpressed: () {},
          ),
          const SettingsSubOptionWidget(
              text: "Automatically like posts of people \n you follow"),
        ],
      ),
    );
  }
}

class AutoCloseDurationTimeSetterWidget extends StatefulWidget {
  const AutoCloseDurationTimeSetterWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<AutoCloseDurationTimeSetterWidget> createState() =>
      _AutoCloseDurationTimeSetterWidgetState();
}

class _AutoCloseDurationTimeSetterWidgetState
    extends State<AutoCloseDurationTimeSetterWidget> {
  String dropDownvalue = "10 minutes";

  var items = [
    "10 minutes",
    "15 minutes",
    "30 minutes",
    "45 minutes",
    "1 hour",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 70, right: 30, top: 20, bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              Text("Set duration"),
            ],
          ),
          DropdownButton(
            borderRadius: BorderRadius.circular(25),
            value: dropDownvalue,
            icon: const Icon(
              Icons.lock_clock,
              color: ConstantColors.gradientColor2,
            ),
            items: items.map((String items) {
              return DropdownMenuItem(
                value: items,
                child: Text(items),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(
                () {
                  dropDownvalue = newValue!;
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
