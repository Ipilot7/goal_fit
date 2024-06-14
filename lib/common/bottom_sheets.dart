import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/common/routes.dart';

mixin BottomSheetsMixin {
  Future<dynamic> userProperties(BuildContext context) {
    List<String> icon = [
      Assets.icons.user,
      Assets.icons.trash,
      Assets.icons.delTrainer,
    ];
    List<String> name = [
      "Посмотреть профиль",
      "Удалить чат",
      "Уволить тренера",
    ];

    return showModalBottomSheet(
        context: context,
        builder: (_) => ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemBuilder: (_, index) => InkWell(
                  onTap: () {
                    context.push(Routes.userInfoPage);
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 13.5),
                    child: Row(
                      children: [
                        SvgPicture.asset(icon[index]),
                        8.w,
                        Text(name[index]),
                      ],
                    ),
                  ),
                ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: icon.length));
  }

  Future<dynamic> addButtonInUserChat(BuildContext context) {
    List<String> icon = [
      Assets.icons.video,
      Assets.icons.camera,
      Assets.icons.begin,
      Assets.icons.goTraining,
      Assets.icons.receipt,
    ];
    List<String> name = [
      "Видео",
      "Фото",
      "Отправить упражнение",
      "Отправить тренировку",
      "Отправить рецепт",
    ];
    return showModalBottomSheet(
        context: context,
        builder: (_) => ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemBuilder: (_, index) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16, vertical: 13.5),
                  child: Row(
                    children: [
                      SvgPicture.asset(icon[index]),
                      8.w,
                      Text(name[index]),
                    ],
                  ),
                ),
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: icon.length));
  }
}
