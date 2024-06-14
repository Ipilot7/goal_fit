import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/assets.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/common/fontstyle.dart';
import 'package:goal_fit/features/catalog/presentation/widgets/section_item.dart';

class ExercisePage extends StatelessWidget {
  const ExercisePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: AppTextStyles.bold18,
        title: const Text("ExercisePage"),
         actions: [
          IconButton(
              onPressed: () {}, icon: SvgPicture.asset(Assets.icons.search))
        ],
        bottom: PreferredSize(
            preferredSize: const Size(double.infinity, 35),
            child: Container(
              margin: const EdgeInsets.only(bottom: 3),
              height: 32,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.only(left: 16),
                itemBuilder: (_, index) {
                  if (index == 0) {
                    return Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(
                            vertical: 6, horizontal: 12),
                        decoration: BoxDecoration(
                            border: Border.all(), shape: BoxShape.circle),
                        child: SvgPicture.asset(Assets.icons.filters));
                  }
                  return Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(
                          vertical: 6, horizontal: 12),
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.circular(20)),
                      child: const Text("data"));
                },
                separatorBuilder: (BuildContext context, int index) => 4.w,
                itemCount: 10,
              ),
            )),
      
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        separatorBuilder: (_, index) => 16.h,
        itemCount: 10,
        itemBuilder: (_, index) => SectionItems(
          type: 'exercise',
          width: double.infinity,
          add: () {},
        ),
      ),
    );
  }
}
