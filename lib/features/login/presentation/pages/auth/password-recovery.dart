import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/fontstyle.dart';
import 'package:goal_fit/common/routes.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class PasswordRecoveryPage extends StatelessWidget {
  const PasswordRecoveryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: GestureDetector(
          onTap: () => context.go(Routes.loginPage),
          child: DecoratedBox(
            decoration: BoxDecoration(
                border: Border.all(color: AppColors.primaryPurpleLight),
                borderRadius: const BorderRadius.all(Radius.circular(16))),
            child: Container(
              height: 44,
              width: 44,
              child: Image.asset('assets/icons/arrow-left.png'),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),
            Text(
              'Восстановление пароля',
              textAlign: TextAlign.left,
              style: AppTextStyles.h1,
            ),
            Text(
              'Мы отправим вам на почту или номер телефона код для сброса пароля',
              style: AppTextStyles.regular,
            ),
            const SizedBox(height: 32),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {},
                  style: AppButtonStyles.primaryButton,
                  child: Text(
                    'Получить код',
                    style: AppTextStyles.primaryButton,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
