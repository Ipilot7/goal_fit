// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/common/fontstyle.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key, required this.child}) : super(key: key);
  final StatefulNavigationShell child;

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: true,
        unselectedLabelStyle:
            AppTextStyles.regular10.copyWith(color: AppColors.grey),
        selectedLabelStyle:
            AppTextStyles.regular10.copyWith(color: AppColors.primaryPurple),
        showSelectedLabels: true,
        onTap: (index) => onTap(context, index),
        items: List.generate(
          icon.length,
          (index) {
            return BottomNavigationBarItem(
                backgroundColor: AppColors.white,
                label: "",
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      colorFilter: ColorFilter.mode(
                          widget.child.currentIndex == index
                              ? AppColors.primaryPurple
                              : AppColors.grey,
                          BlendMode.srcIn),
                      icon[index],
                    ),
                    2.h,
                    Text(
                      "data",
                      style: AppTextStyles.regular10.copyWith(
                          color: widget.child.currentIndex == index
                              ? AppColors.primaryPurple
                              : AppColors.grey),
                    )
                  ],
                ));
          },
        ),
      ),
    );
  }

  void onTap(BuildContext context, int index) {
    widget.child.goBranch(
      index,
      initialLocation: index == widget.child.currentIndex,
    );
    setState(() {});
  }
}

List<String> icon = [
  Assets.icons.home,
  Assets.icons.catalog,
  Assets.icons.training,
  Assets.icons.chat,
  Assets.icons.profile,
];
List<String> names = [
  "Главная",
  "Каталог",
  "Тренерская",
  "Чаты",
  "Профиль",
];

class IconItem {
  Icon icon;
  String label;
  IconItem({
    required this.icon,
    required this.label,
  });
}
