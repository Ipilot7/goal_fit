import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/bottom_sheets.dart';
import 'package:goal_fit/common/custom_textfield.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/features/chat/widgets/chat_item_widget.dart';

class UserChatPage extends StatelessWidget with BottomSheetsMixin {
  const UserChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            userProperties(context);
          },
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(Assets.images.trainer),
                radius: 18,
              ),
              12.w,
              const Text("Baxtiyor"),
              8.w,
              SvgPicture.asset(Assets.icons.chervonDown)
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(Assets.icons.call))
        ],
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
          icon: SvgPicture.asset(Assets.icons.plus),
          onPressed: () {
            addButtonInUserChat(context);
          },
        ),
        trailing: IconButton(
          icon: SvgPicture.asset(Assets.icons.microphone),
          onPressed: () {},
        ),
        hintText: "Сообщение",
        borderColor: AppColors.transparent,
      ),
    );
  }
}
