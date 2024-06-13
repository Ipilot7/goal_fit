import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/routes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  SharedPreferences? prefs;
  initShared() async {
    prefs = await SharedPreferences.getInstance();
  }

  void launch() {
    Future.delayed(const Duration(seconds: 1), () {
      context.go(Routes.loginPage);
    });
  }

  @override
  void initState() {
    super.initState();
    launch();
    initShared();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Splash")),
    );
  }
}
