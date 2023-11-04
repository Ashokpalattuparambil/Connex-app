import 'package:connex/global%20variables/colors.dart';
import 'package:flutter/material.dart';

class RecentChatListWidget extends StatelessWidget {
  const RecentChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/chatinterface');
      },
      child: const ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
              "https://images.unsplash.com/photo-1508243529287-e21914733111?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80"),
          radius: 25,
        ),
        title: Text(
          "Bob marcus",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text("what's the plan?",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            )),
        trailing: Text(
          "2 days ago",
          style: TextStyle(fontSize: 12, color: ConstantColors.kGray),
        ),
      ),
    );
  }
}
