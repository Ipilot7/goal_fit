// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/fontstyle.dart';
import 'package:goal_fit/common/routes.dart';
import 'package:goal_fit/common/utills/app_button_styles.dart';

class TrainingPage extends StatefulWidget {
  const TrainingPage({super.key});

  @override
  State<TrainingPage> createState() => _TrainingPageState();
}

class _TrainingPageState extends State<TrainingPage> {
  final pageController = PageController(initialPage: 0);

  Set<String> _isSelected = {'Students'};
  int _activePage = 0;

  Map pagesMap = {
    0: {'Students'},
    1: {'Trainings'},
    2: {'Tasks'},
  };

  void updateSelected(Set<String> newSelection) {
    setState(() {
      _isSelected = newSelection;
    });

    print(_isSelected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        title: Text(
          'Тренерская',
          style: AppTextStyles.h1,
        ),
        centerTitle: false,
        leading: Image.asset('assets/images/trener.png'),
        actions: <Widget>[
          Image.asset('assets/images/bonuses.png'),
          const SizedBox(width: 16)
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SegmentedButton(
            segments: <ButtonSegment<String>>[
              ButtonSegment(
                value: 'Students',
                label: Text(
                  'Ученики',
                  style: AppTextStyles.segmentedButtonStyle,
                ),
              ),
              ButtonSegment(
                value: 'Trainings',
                label: Text(
                  'Тренировки',
                  style: AppTextStyles.segmentedButtonStyle,
                ),
              ),
              ButtonSegment(
                value: 'Tasks',
                label: Text(
                  'Задания',
                  style: AppTextStyles.segmentedButtonStyle,
                ),
              ),
            ],
            selected: _isSelected,
            onSelectionChanged: updateSelected,
            style: AppButtonStyles.segementedButton,
            showSelectedIcon: false,
          ),
          Expanded(
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: PageView.builder(
                controller: pageController,
                onPageChanged: (int page) {
                  setState(() {
                    _activePage = page;
                    updateSelected(pagesMap[page]);
                    print(_isSelected);
                  });
                },
                itemCount: 3,
                itemBuilder: (context, index) {
                  if (_isSelected == pagesMap[0]) {
                    return _Students();
                  } else if (_isSelected == pagesMap[1]) {
                    return const Center(
                      child: Text('Тренировки'),
                    );
                  } else if (_isSelected == pagesMap[2]) {
                    return const Center(
                      child: Text('Задачи'),
                    );
                  } else {
                    return const Center(
                      child: Text('ERROR'),
                    );
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Student {
  String image;
  String name;
  String info;
  Student({
    required this.image,
    required this.name,
    required this.info,
  });
}

class _Students extends StatelessWidget {
  const _Students({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final students = [
      Student(
          image: 'assets/images/avatar.png', name: 'Alex', info: 'Похудение'),
      Student(
          image: 'assets/images/avatar.png',
          name: 'Michail',
          info: 'Набор массы'),
      Student(
          image: 'assets/images/avatar.png',
          name: 'Elena',
          info: 'Составление диет'),
      Student(
          image: 'assets/images/avatar.png', name: 'Anna', info: 'Похудение'),
      Student(
          image: 'assets/images/avatar.png',
          name: 'Alena',
          info: 'Поддержание физ. формы'),
    ];

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  'Ученики',
                  style: AppTextStyles.h1,
                  textAlign: TextAlign.left,
                ),
                const Spacer(),
                Text('${students.length}/50'),
              ],
            ),
            const TextField(
              style: TextStyle(height: 0.5),
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
                hintText: 'Найти ученика',
                filled: true,
                fillColor: Color(0xfff4f4f5),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: students.length,
                itemBuilder: (contex, index) {
                  return _StudentsItem(
                    student: students[index],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _StudentsItem extends StatelessWidget {
  final Student student;

  const _StudentsItem({
    Key? key,
    required this.student,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Row(
          children: [
            Image.asset('assets/images/avatar.png'),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  student.name,
                  style: AppTextStyles.subinfo,
                ),
                Text(
                  student.info,
                  style: AppTextStyles.regular,
                ),
              ],
            ),
            const Spacer(),
            Container(
              child: Row(
                children: [
                  Image.asset('assets/icons/plus.png'),
                  const SizedBox(width: 8),
                  GestureDetector(
                    onTap: () => context.go(Routes.chatPage),
                    child: Image.asset('assets/icons/chat.png'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
