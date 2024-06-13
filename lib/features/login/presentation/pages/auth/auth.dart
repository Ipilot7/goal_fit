import 'package:flutter/material.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          children: [
            _TopPoster(),
            _Title(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: _AuthButtons(),
            ),
            Spacer(),
            _Guest(),
          ],
        ),
      ),
    );
  }
}

class _Guest extends StatelessWidget {
  const _Guest({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: TextButton(
          onPressed: () => {},
          child: Text(
            'Гостевой вход',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: AppColors.primaryPurple,
            ),
          )),
    );
  }
}

class _AuthButtons extends StatelessWidget {
  const _AuthButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: AppButtonStyles.primaryButton,
            child: const Text(
              'Войти',
            ),
          ),
        ),
        const SizedBox(height: 16),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: AppButtonStyles.secondaryButton,
            child: Text(
              'Зарегистрироваться',
              style: TextStyle(color: AppColors.primaryPurple),
            ),
          ),
        ),
      ],
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.w700,
        ),
        children: [
          TextSpan(
              text: 'Добро пожаловать в ',
              style: TextStyle(color: AppColors.primaryDark)),
          TextSpan(
              text: 'GoalFit',
              style: TextStyle(color: AppColors.primaryPurple)),
        ],
      ),
    );
  }
}

class _TopPoster extends StatelessWidget {
  const _TopPoster({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Image.asset(
        'assets/images/auth_back.png',
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
