import 'package:flutter/material.dart';

class ProfilePostListWidget extends StatelessWidget {
  final String images;
  const ProfilePostListWidget({super.key, required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
            images,
          ),
        ),
      ),
    );
  }
}
