import 'package:flutter/material.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/extentions.dart';

class UserChatPage extends StatelessWidget {
  const UserChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: AssetImage(Assets.images.trainer),
              radius: 18,
            ),
            12.w,
            const Text("Baxtiyor")
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.phone))],
      ),
    );
  }
}
