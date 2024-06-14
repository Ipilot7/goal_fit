import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/features/catalog/presentation/widgets/section_item.dart';

class SectionWidget extends StatelessWidget {
  const SectionWidget({
    super.key,
    required this.text,
    required this.type,
    this.goToAllTap,
    this.likeTap,
  });
  final String text, type;
  final void Function()? goToAllTap, likeTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 16,
        bottom: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: AppColors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: goToAllTap,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    text,
                    style: AppTextStyles.bold18,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.icons.chervonRight))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 181,
            child: ListView.separated(
              padding: const EdgeInsets.only(left: 16),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (_, index) => 8.w,
              itemCount: 10,
              itemBuilder: (_, index) =>
                  SectionItems(type: type, likeTap: likeTap),
            ),
          )
        ],
      ),
    );
  }
}
