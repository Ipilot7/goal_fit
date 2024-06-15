import 'package:flutter/material.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/fontstyle.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            _MenuItem(title: 'Цель'),
            _MenuItem(title: "Параметры"),
            _MenuItem(title: 'Профиль'),
            _MenuItem(title: 'Конфидециальность'),
            _MenuItem(title: 'Напоминания'),
            _MenuItem(title: 'Помощь и вопросы'),
            _MenuItem(title: 'Единицы измерения'),
          ],
        ),
      ),
    );
  }
}

class _MenuItem extends StatelessWidget {
  final String title;

  const _MenuItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.h2,
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_right),
        )
      ],
    );
  }
}
