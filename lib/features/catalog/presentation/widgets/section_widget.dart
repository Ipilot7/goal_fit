import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:goal_fit/common/all_contants.dart';
import 'package:goal_fit/common/extentions.dart';

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
              itemBuilder: (_, index) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      width: type == "trainers" ? 160 : 212,
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
                          )
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
              ),
            ),
          )
        ],
      ),
    );
  }
}

class ColoredContainer extends StatelessWidget {
  const ColoredContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 8),
      decoration: BoxDecoration(
          color: AppColors.purple, borderRadius: BorderRadius.circular(4)),
      child: child,
    );
  }
}
