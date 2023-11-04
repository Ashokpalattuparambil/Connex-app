import 'package:connex/presentation/screens/lights/widgets/video_play_widget.dart';
import 'package:flutter/material.dart';

class Lights extends StatelessWidget {
  const Lights({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return const VideoPlayWidget();
      },
      itemCount: 10,
    );
  }
}
