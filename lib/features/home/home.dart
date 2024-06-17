import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/fontstyle.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryLight,
      appBar: AppBar(
        backgroundColor: AppColors.primaryLight,
        title: Text(
          'Игорь',
          style: AppTextStyles.h1,
        ),
        centerTitle: false,
        leading: Image.asset('assets/images/trener.png'),
        actions: <Widget>[
          Image.asset('assets/images/bonuses.png'),
          const SizedBox(width: 16)
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'План на день',
                  style: AppTextStyles.h2,
                ),
                const _HomeTrainigs(),
                const SizedBox(height: 16),
                Column(
                  children: [
                    const _HomeTitleItem(
                      title: 'Диета',
                    ),
                    const _HomeDiet(),
                    const _HomeTitleItem(
                      title: 'Активность',
                    ),
                    _HomeActivity(),
                    const _HomeTitleItem(
                      title: 'Измерение тела',
                    ),
                    const _HomeWeight(),
                    const _HomeTitleItem(
                      title: 'Цель',
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Цель',
                            style: AppTextStyles.h2,
                          ),
                          Text(
                            'Посмотри, сколько осталось до цели',
                            style: AppTextStyles.regular,
                          ),
                          const SizedBox(height: 12),
                          Text(
                            'Набор массы',
                            style: AppTextStyles.h2,
                          ),
                          TextButton(
                              onPressed: () {},
                              child: Text(
                                'Ввести вручную',
                                style:
                                    TextStyle(color: AppColors.primaryPurple),
                              ))
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _HomeWeight extends StatelessWidget {
  const _HomeWeight({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Вес',
            style: AppTextStyles.h2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
              Text(
                '0,00 кг',
                style: AppTextStyles.h2,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _HomeActivity extends StatelessWidget {
  const _HomeActivity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            'Шаги',
            style: AppTextStyles.h2,
          ),
          Text(
            'Автоматический трекинг',
            style: AppTextStyles.regular,
          ),
          const SizedBox(height: 20),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onPressed: () {},
              style: AppButtonStyles.primaryButton,
              child: Text(
                'Выполнить',
                style: AppTextStyles.primaryButton,
              ),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                'Ввести вручную',
                style: TextStyle(color: AppColors.primaryPurple),
              ))
        ],
      ),
    );
  }
}

class _HomeTitleItem extends StatelessWidget {
  final String title;

  const _HomeTitleItem({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.h2,
        ),
        const Spacer(),
        IconButton(onPressed: () {}, icon: const Icon(Icons.chevron_right))
      ],
    );
  }
}

class _HomeDiet extends StatelessWidget {
  const _HomeDiet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 160,
          height: 100,
          child: Container(
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Вода'),
                Column(
                  children: [
                    Image.asset('assets/icons/plus.png'),
                    const SizedBox(height: 12),
                    Text(
                      '0,00 л',
                      style: AppTextStyles.h2,
                    ),
                    Text(
                      '/2,00 л',
                      style: AppTextStyles.regular,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(
          width: 160,
          height: 100,
          child: Container(
            color: AppColors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('Питание'),
                Column(
                  children: [
                    Image.asset('assets/icons/plus.png'),
                    const SizedBox(height: 12),
                    Text(
                      '1200 ккал',
                      style: AppTextStyles.h2,
                    ),
                    Text(
                      '/2000 ккал',
                      style: AppTextStyles.regular,
                    ),
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class _HomeTrainigs extends StatelessWidget {
  const _HomeTrainigs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Container(
        color: AppColors.white,
        child: Container(
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Text(
                  'Тренировки',
                  style: AppTextStyles.h2,
                  textAlign: TextAlign.left,
                ),
              ),
              Row(
                children: [
                  Image.asset('assets/images/home_training.png'),
                  const SizedBox(width: 8),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Плавание в бассейне',
                        style: AppTextStyles.subinfo,
                      ),
                      SizedBox(
                        height: 38,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: AppButtonStyles.primaryButton,
                          child: Text(
                            'Выполнить',
                            style: AppTextStyles.primaryButton,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
