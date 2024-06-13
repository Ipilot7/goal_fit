import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/common/routes.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Чаты"),
        titleTextStyle: AppTextStyles.bold24,
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.search))],
      ),
      body: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          itemBuilder: (_, index) => InkWell(
                onTap: () {
                  context.push(Routes.userChatPage);
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.5),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(Assets.images.trainer),
                        radius: 24,
                      ),
                      12.w,
                      Expanded(
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Игорь Каравалов",
                                  style: AppTextStyles.regular16,
                                ),
                                Text(
                                  "15:36",
                                  style: AppTextStyles.regular12
                                      .copyWith(color: AppColors.grey),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Хорошо. Смотри, я работаю с такими проблемами, но необходимо понимать сколько времени ты готов уделять для достижения результата.",
                                    overflow: TextOverflow.ellipsis,
                                    style: AppTextStyles.regular14
                                        .copyWith(color: AppColors.grey),
                                  ),
                                ),
                                8.w,
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                      color: AppColors.grey,
                                      shape: BoxShape.circle),
                                  child: Text(
                                    "1",
                                    style: AppTextStyles.regular10
                                        .copyWith(color: AppColors.white),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                height: 6,
              ),
          itemCount: 10),
    );
  }
}
