import 'package:flutter/material.dart';
import 'package:goal_fit/common/app_color.dart';
import 'package:goal_fit/common/fontstyle.dart';

class CatalogPage extends StatelessWidget {
  const CatalogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryLight,
        title: Text(
          'Каталог',
          style: AppTextStyles.h1,
        ),
        centerTitle: false,
        actions: <Widget>[
          Image.asset('assets/icons/search.png'),
          const SizedBox(width: 16)
        ],
      ),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            _CatalogTitle(
              title: 'Тренеры',
            ),
            _TrainersList(),
            _CatalogTitle(
              title: 'Тренировки',
            ),
            _TrainersList(),
            _CatalogTitle(
              title: 'Упражнения',
            ),
            _TrainersList(),
          ],
        ),
      ),
    );
  }
}

class _CatalogTitle extends StatelessWidget {
  final String title;
  const _CatalogTitle({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Text(
            title,
            style: AppTextStyles.h2,
          ),
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_right),
        ),
      ],
    );
  }
}

class _TrainersList extends StatelessWidget {
  const _TrainersList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _TrainersListItem(),
          _TrainersListItem(),
          _TrainersListItem(),
        ],
      ),
    );
  }
}

class _TrainersListItem extends StatelessWidget {
  const _TrainersListItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('assets/images/catalog_trener.png'),
          Text(
            'Игорь Каравалов',
            style: AppTextStyles.h3,
            textAlign: TextAlign.left,
          ),
          Text(
            'Тренер-нутрициолог',
            style: AppTextStyles.subinfo,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
