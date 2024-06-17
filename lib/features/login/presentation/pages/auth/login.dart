import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/fontstyle.dart';
import 'package:goal_fit/common/routes.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        leading: GestureDetector(
          onTap: () => context.go(Routes.authPage),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 60),
                Text(
                  'С возвращением, Игорь!',
                  textAlign: TextAlign.left,
                  style: AppTextStyles.h1,
                ),
                Text(
                  'Давайте зайдем в аккаунт',
                  style: AppTextStyles.regular,
                ),
                const SizedBox(height: 32),
                const _LoginInputs(),
                const SizedBox(height: 40),
                const _LoginButton(),
                const _LoginWith(),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Есть аккаунт?',
                    ),
                    TextButton(onPressed: () {}, child: const Text('Войти'))
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _LoginWith extends StatelessWidget {
  const _LoginWith({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const _LoginDivider(),
          const SizedBox(height: 20),
          Center(
            child: SizedBox(
              width: 170,
              child: Row(
                children: [
                  Ink(
                    width: 72,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.primaryPurpleLight),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/vk.png',
                      ),
                    ),
                  ),
                  const Spacer(),
                  Ink(
                    width: 72,
                    height: 44,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColors.primaryPurpleLight),
                    ),
                    child: InkWell(
                      onTap: () {},
                      child: Image.asset(
                        'assets/icons/yandex.png',
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _LoginDivider extends StatelessWidget {
  const _LoginDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: <Widget>[
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(right: 12.0),
            child: const Divider(
              color: Colors.grey,
              height: 36,
            )),
      ),
      const Text("Вход с помощью"),
      Expanded(
        child: Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: const Divider(
              color: Colors.grey,
              height: 36,
            )),
      ),
    ]);
  }
}

class _LoginButton extends StatelessWidget {
  const _LoginButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () => context.go(Routes.homePage),
          style: AppButtonStyles.primaryButton,
          child: Text(
            'Войти',
            style: AppTextStyles.primaryButton,
          )),
    );
  }
}

class _LoginInputs extends StatelessWidget {
  const _LoginInputs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        const TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: 'Email или номер телефона',
                filled: true,
                fillColor: Color(0xfff4f4f5))),
        const SizedBox(
          height: 16,
        ),
        const TextField(
            decoration: InputDecoration(
                border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: 'Пароль',
                filled: true,
                fillColor: Color(0xfff4f4f5))),
        TextButton(
            onPressed: () => context.go(Routes.passwordRecovery),
            child: Text(
              'Забыли пароль?',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: AppColors.primaryPurple,
              ),
            )),
      ],
    );
  }
}
