import 'package:flutter/material.dart';
import 'package:goal_fit/common/fontstyle.dart';

class TrainingPage extends StatelessWidget {
  const TrainingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: AppTextStyles.bold18,
        title: const Text("TrainingPage"),
      ),
    );
  }
}
