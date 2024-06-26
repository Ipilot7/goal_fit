import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/routes.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class OnboardScreenData {
  final String image;
  final String title;
  final String infoText;

  OnboardScreenData({
    required this.image,
    required this.title,
    required this.infoText,
  });
}

class OnboardPage extends StatefulWidget {
  const OnboardPage({super.key});

  @override
  State<OnboardPage> createState() => _OnboardPageState();
}

final loginScreensItemsData = [
  OnboardScreenData(
      image: 'assets/images/login_1.png',
      title: 'Онлайн-консультации с тренерами',
      infoText:
          'Занимайся онлайн под контролем профессиональных тренеров вместе с нашим приложением'),
  OnboardScreenData(
      image: 'assets/images/login_2.jpeg',
      title: 'Поможем тебе достичь твоей фитнес-цели ',
      infoText:
          'Ставь цель и время, за которое хочешь достигнуть результата, а мы подберем подходящего тренера'),
  OnboardScreenData(
      image: 'assets/images/login_3.png',
      title: 'Получай удовольствие от спорта вместе с нами',
      infoText: 'Получай уникальные награды и бонусы за выполнение тренировок'),
];

class _OnboardPageState extends State<OnboardPage> {
  final pageController = PageController(
    initialPage: 0,
  );

  int _activePage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: <Widget>[
          TextButton(
            onPressed: () => {context.go(Routes.authPage)},
            child: Text(
              'Пропустить',
              style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: AppColors.primaryPurple),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _activePage = page;
                  });
                },
                itemCount: loginScreensItemsData.length,
                itemBuilder: (context, index) {
                  return OnboardScreenCarouselItem(
                    data: loginScreensItemsData[index],
                    controller: pageController,
                    index: index,
                  );
                },
              ),
            ),
          ),
          OnboardPagination(activePage: _activePage)
        ],
      ),
    );
  }
}

class OnboardScreenCarouselItem extends StatelessWidget {
  final OnboardScreenData data;
  final PageController controller;
  final int index;

  const OnboardScreenCarouselItem({
    super.key,
    required this.data,
    required this.controller,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 10,
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
          const SizedBox(height: 32),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                index <= 1
                    ? controller.animateToPage(index + 1,
                        duration: const Duration(milliseconds: 500),
                        curve: Curves.easeOut)
                    : context.go(Routes.authPage);
              },
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

class OnboardPagination extends StatelessWidget {
  const OnboardPagination({
    super.key,
    required int activePage,
  }) : _activePage = activePage;

  final int _activePage;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List<Widget>.generate(
          loginScreensItemsData.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 2),
            child: CircleAvatar(
              radius: 2,
              backgroundColor: _activePage == index
                  ? AppColors.primaryDark
                  : AppColors.tipographyLight,
            ),
          ),
        ),
      ),
    );
  }
}
