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
        body: widget.child,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) => onTap(context, index),
          items: List.generate(icon.length, (index) {
            return BottomNavigationBarItem(
                backgroundColor: AppColors.green,
                label: "jhj",
                icon: Icon(
                  icon[index],
                ));
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

List<IconData> icon = [
  Icons.abc,
  Icons.abc,
  Icons.abc,
  Icons.abc,
  Icons.abc,
];
