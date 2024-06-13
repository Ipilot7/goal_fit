import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/routes.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class LoginScreenData {
  final String image;
  final String title;
  final String infoText;

  LoginScreenData({
    required this.image,
    required this.title,
    required this.infoText,
  });
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

final LoginScreens = [
  LoginScreenData(
      image: 'assets/images/login_1.png',
      title: 'Онлайн-консультации с тренерами',
      infoText:
          'Занимайся онлайн под контролем профессиональных тренеров вместе с нашим приложением'),
  LoginScreenData(
      image: 'assets/images/login_1.png',
      title: 'Поможем тебе достичь твоей-фитнес цели ',
      infoText:
          'Ставь цель и время, за которое хочешь достигнуть результата, а мы подберем подходящего тренера'),
  LoginScreenData(
      image: 'assets/images/login_1.png',
      title: 'Получай удовольствие  от спорта вместе с нами',
      infoText: 'Получай уникальные награды и бонусы за выполнение тренировок'),
];

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: <Widget>[
          TextButton(
            onPressed: () => {context.go(Routes.homePage)},
            child: const Text('Пропустить'),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: PageView.builder(
                itemCount: LoginScreens.length,
                itemBuilder: (context, index) {
                  return LoginScreenCarouselItem(data: LoginScreens[0]);
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LoginScreenCarouselItem extends StatelessWidget {
  final LoginScreenData data;

  const LoginScreenCarouselItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 44,
          ),
          Center(
            child: ClipOval(
              child: SizedBox.fromSize(
                size: const Size.fromRadius(164),
                child: Image.asset(data.image),
              ),
            ),
          ),
          const SizedBox(
            height: 26,
          ),
          Text(
            data.title,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              color: AppColors.primaryDark,
              fontSize: 24,
              height: 1.5,
              fontWeight: FontWeight.w700,
              letterSpacing: 0.4,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            data.infoText,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: 'Nunito',
              color: AppColors.primaryDark,
              fontSize: 14,
              height: 1.4,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 66,
          ),
          Container(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => {},
              style: AppButtonStyles.primaryButton,
              child: const Text(
                'Далее',
              ),
            ),
          )
        ],
      ),
    );
  }
}
