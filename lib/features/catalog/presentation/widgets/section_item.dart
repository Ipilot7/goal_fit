import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/extentions.dart';
import 'package:goal_fit/features/catalog/presentation/widgets/colorer_container.dart';

class SectionItems extends StatelessWidget {
  const SectionItems({
    super.key,
    required this.type,
    this.likeTap,
    this.width,
    this.add,
  });

  final String type;
  final void Function()? likeTap, add;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
            width: width ?? (type == "trainers" ? 160 : 212),
            height: type == "trainers" ? 140 : 120,
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.grey,
                image: DecorationImage(
                    image: AssetImage(Assets.images.trainer),
                    fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(16)),
            alignment: Alignment.topRight,
            child: GestureDetector(
              onTap: likeTap,
              child: Container(
                width: 32,
                height: 32,
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.purple.withOpacity(.8),
                ),
                child: SvgPicture.asset(Assets.icons.heart),
              ),
            )),
        4.h,
        Text(
          "Игорь Каравалов",
          style: AppTextStyles.bold14,
        ),
        if (type == "trainers")
          Text(
            "Тренер-нутрициолог",
            style: AppTextStyles.regular12,
          ),
        if (type == "training")
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              children: [
                const ColoredContainer(
                  child: Text("data"),
                ),
                4.w,
                ColoredContainer(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      SvgPicture.asset(Assets.icons.flashActive),
                      SvgPicture.asset(Assets.icons.flashActive),
                      SvgPicture.asset(Assets.icons.flashActive),
                    ],
                  ),
                )),
                4.w,
                const ColoredContainer(
                  child: Text("data"),
                ),
                // const Spacer(),
                add != null
                    ? Expanded(
                        child: GestureDetector(
                          onTap: add,
                          child: Container(
                            width: 32,
                            height: 32,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.purple.withOpacity(.8),
                            ),
                            child: const Icon(Icons.add),
                          ),
                        ),
                      )
                    : const SizedBox.shrink()
              ],
            ),
          ),
        if (type == "exercise")
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              children: [
                ColoredContainer(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: Row(
                    children: [
                      SvgPicture.asset(Assets.icons.flashActive),
                      SvgPicture.asset(Assets.icons.flashActive),
                      SvgPicture.asset(Assets.icons.flashActive),
                    ],
                  ),
                )),
                4.w,
                const ColoredContainer(
                  child: Text("data"),
                )
              ],
            ),
          ),
        if (type == "recipes")
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Row(
              children: [
                const ColoredContainer(
                  child: Text("data"),
                ),
                4.w,
                const ColoredContainer(
                  child: Text("data"),
                ),
                4.w,
                const ColoredContainer(
                  child: Text("data"),
                )
              ],
            ),
          )
      ],
    );
  }
}
