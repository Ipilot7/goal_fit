import 'package:flutter/material.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/custom_textfield.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/features/chat/widgets/chat_item_widget.dart';

class UserChatPage extends StatelessWidget {
  const UserChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            showModalBottomSheet(
                context: context,
                builder: (_) => ListView.builder(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    itemBuilder: (_, index) => Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 13.5),
                          child: Row(
                            children: [
                              const Icon(Icons.train_sharp),
                              8.w,
                              const Text("data"),
                            ],
                          ),
                        ),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3));
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(Assets.images.trainer),
                radius: 18,
              ),
              12.w,
              const Text("Baxtiyor"),
              const Icon(Icons.chevron_right_rounded)
            ],
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.phone))],
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          itemBuilder: (_, index) => ChatItemWidget(
                isMe: index == 1,
                text: 'asdasdasjdasjdasidjasjdasdhasjndasdsaihdihsa',
                time: '22:10',
              ),
          separatorBuilder: (_, index) => 12.h,
          itemCount: 2),
      bottomNavigationBar: CustomTextField(
        leading: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {},
        ),
        trailing: IconButton(
          icon: const Icon(Icons.mic),
          onPressed: () {},
        ),
        hintText: "Сообщение",
        borderColor: AppColors.transparent,
      ),
    );
  }
}
