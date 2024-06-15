import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/features/catalog/presentation/widgets/section_widget.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        titleTextStyle: AppTextStyles.bold24,
        title: const Text("Каталог"),
        actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(Assets.icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SectionWidget(
              text: 'Тренеры',
              type: 'trainers',
            ),
            8.h,
            const SectionWidget(
              text: 'Тренировки',
              type: 'training',
            ),
            8.h,
            const SectionWidget(
              text: 'Упражнения',
              type: 'exercise',
            ),
            const SectionWidget(
              text: 'Рецепты',
              type: 'recipes',
            ),
          ],
        ),
      ),
    );
  }
}
