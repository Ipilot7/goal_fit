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
            _TrainingsList(),
            _CatalogTitle(
              title: 'Упражнения',
            ),
            _ExerList(),
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
          _ListItem(
            image: 'assets/images/catalog_trener.png',
            name: 'Игорь Каравалов',
            info: 'Тренер-нутрициолог',
          ),
          _ListItem(
            image: 'assets/images/catalog_trener2.png',
            name: 'Ольга Кузьмина',
            info: 'Тренер-нутрициолог',
          ),
        ],
      ),
    );
  }
}

class _TrainingsList extends StatelessWidget {
  const _TrainingsList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _ListItem(
            image: 'assets/images/swim.png',
            name: 'Плавание в бассейне',
            info: '',
          ),
          _ListItem(
            image: 'assets/images/velo.png',
            name: 'Велосипедная тренировка',
            info: '',
          ),
        ],
      ),
    );
  }
}

class _ExerList extends StatelessWidget {
  const _ExerList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const [
          _ListItem(
            image: 'assets/images/catalog_exer.png',
            name: 'Подтягивания на турнике',
            info: '',
          ),
          _ListItem(
            image: 'assets/images/gim.png',
            name: 'Жим',
            info: '',
          ),
        ],
      ),
    );
  }
}

class _ListItem extends StatelessWidget {
  final String image;
  final String name;
  final String info;

  const _ListItem({
    super.key,
    required this.image,
    required this.name,
    required this.info,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 130,
          ),
          Text(
            name,
            style: AppTextStyles.h3,
            textAlign: TextAlign.left,
          ),
          Text(
            info,
            style: AppTextStyles.subinfo,
            textAlign: TextAlign.left,
          ),
        ],
      ),
    );
  }
}
