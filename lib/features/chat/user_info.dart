import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/common/fontstyle.dart';

class UserInfoPage extends StatelessWidget {
  const UserInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white.withOpacity(0.96),
      appBar: AppBar(
        title: const Text("Игорь Каравалов"),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(Assets.icons.heart)),
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(Assets.icons.share)),
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 360,
            decoration: BoxDecoration(color: AppColors.blue),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.white),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Игорь Каравалов",
                  style: AppTextStyles.bold16,
                ),
                Text(
                  "Тренер-нутрициолог ⸱Стаж 3 года",
                  style:
                      AppTextStyles.regular14.copyWith(color: AppColors.grey),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "О тренере",
                  style: AppTextStyles.bold14,
                ),
                Text(
                  "Профессиональный фитнес-тренер со стажем более 10 лет в преподавании и бодибилдинге",
                  style: AppTextStyles.regular14,
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20)),
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Специализация",
                  style: AppTextStyles.bold14,
                ),
                4.h,
                Wrap(
                  children: List.generate(
                    texts.length,
                    (index) => Container(
                        margin: const EdgeInsets.only(right: 4, bottom: 4),
                        padding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 8),
                        decoration: BoxDecoration(
                            color: AppColors.purple,
                            borderRadius: BorderRadius.circular(20)),
                        child: Text(texts[index])),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

List<String> texts = [
  "Построение мускулатуры",
  "Составление диет",
  "Нутрициология",
  "Похудение",
];
