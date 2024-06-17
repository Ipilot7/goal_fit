// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:goal_fit/common/all_contants.dart';
// import 'package:goal_fit/common/extentions.dart';
// import 'package:goal_fit/common/routes.dart';
// import 'package:goal_fit/features/catalog/presentation/widgets/section_widget.dart';

// class CatalogPage extends StatelessWidget {
//   const CatalogPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         titleTextStyle: AppTextStyles.bold24,
//         title: const Text("Каталог"),
//         actions: [
//           IconButton(
//               onPressed: () {}, icon: SvgPicture.asset(Assets.icons.search))
//         ],
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             SectionWidget(
//               goToAllTap: () {
//                 context.pushNamed(Routes.trainer);
//               },
//               text: 'Тренеры',
//               type: 'trainers',
//             ),
//             8.h,
//             SectionWidget(
//               goToAllTap: () {
//                 context.pushNamed(Routes.training);
//               },
//               text: 'Тренировки',
//               type: 'training',
//             ),
//             8.h,
//             SectionWidget(
//               goToAllTap: () {
//                 context.pushNamed(Routes.exercise);
//               },
//               text: 'Упражнения',
//               type: 'exercise',
//             ),
//             SectionWidget(
//               goToAllTap: () {
//                 context.pushNamed(Routes.recipes);
//               },
//               text: 'Рецепты',
//               type: 'recipes',
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
