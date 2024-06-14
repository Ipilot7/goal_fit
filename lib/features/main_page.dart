// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/app_color.dart';

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
        backgroundColor: AppColors.primaryLight,
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryPurple,
          onTap: (index) => onTap(context, index),
          items: List.generate(icons.length, (index) {
            return BottomNavigationBarItem(
              backgroundColor: AppColors.white,
              label: icons[index].label,
              icon: icons[index].icon,
            );
          }),
        ));
  }

  void onTap(BuildContext context, int index) {
    widget.child.goBranch(
      index,
      initialLocation: index == widget.child.currentIndex,
    );
  }
}

List<IconItem> icons = [
  IconItem(
      icon: Icon(
        Icons.home,
        color: AppColors.tipographyDark,
      ),
      label: 'Home'),
  IconItem(
      icon: Icon(
        Icons.apps,
        color: AppColors.tipographyDark,
      ),
      label: 'Catalog'),
  IconItem(
      icon: Icon(
        Icons.back_hand,
        color: AppColors.tipographyDark,
      ),
      label: 'Trainings'),
  IconItem(
      icon: Icon(
        Icons.chat,
        color: AppColors.tipographyDark,
      ),
      label: 'Chat'),
  IconItem(
      icon: Icon(
        Icons.portrait,
        color: AppColors.tipographyDark,
      ),
      label: 'Profile'),
];

class IconItem {
  Icon icon;
  String label;
  IconItem({
    required this.icon,
    required this.label,
  });
}
