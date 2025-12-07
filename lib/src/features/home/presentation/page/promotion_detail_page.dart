import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';
import 'package:bookeat/src/features/home/presentation/widgets/details_description_card_sec_variant.dart';
import 'package:flutter_svg/svg.dart';

class PromotionDetailPage extends StatefulWidget {
  const PromotionDetailPage({super.key});

  @override
  State<PromotionDetailPage> createState() => _PromotionDetailPageState();
}

class _PromotionDetailPageState extends State<PromotionDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.lightBackground,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: false,
            floating: false,
            backgroundColor: Colors.transparent,
            leading: Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: CustomAppButton(
                padding: 12,
                aroundPadding: 0,
                color: Colors.white.withValues(alpha: 0.9),
                icon: Icon(
                  Icons.arrow_back,
                  color: context.colors.gray700,
                  size: 24,
                ),
                onTap: () => context.pop(),
              ),
            ),
            flexibleSpace: Stack(
              children: [
                Positioned.fill(
                  child: Image.asset(
                    context.assetImages.example.path,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  top: 16,
                  right: 16,
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                    decoration: BoxDecoration(
                      color: context.colors.orange,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      'Осталось 5 дней',
                      style: context.typography.captionMbold.copyWith(
                        color: context.colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Фестивальный сет за 3500 тг',
                          style: context.typography.h3bold.copyWith(
                            color: context.colors.black,
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Champagne - Breakfast',
                          style: context.typography.bodyMmedium.copyWith(
                            color: context.colors.textGray,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Row(
                          children: [
                            Text(
                              'Даты проведения:',
                              style: context.typography.bodyMmedium.copyWith(
                                color: context.colors.gray800,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Text(
                              '11.07.2025 — 03.08.2025',
                              style: context.typography.bodyMmedium.copyWith(
                                color: context.colors.textGray,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Описание акции',
                          style: context.typography.h4bold.copyWith(
                            color: context.colors.black,
                          ),
                        ),
                        const SizedBox(height: 16),
                        ExpansionTile(
                          title: Text(
                            'Фестивальный сет №1',
                            style: context.typography.bodyMbold.copyWith(
                              color: context.colors.black,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16, bottom: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildListItem(context, 'Открытый сэндвич'),
                                  _buildListItem(context, 'Фреш'),
                                  _buildListItem(context, 'Круассан'),
                                  _buildListItem(context, 'На выбор кофе'),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        ExpansionTile(
                          title: Text(
                            'Фестивальный сет №2',
                            style: context.typography.bodyMbold.copyWith(
                              color: context.colors.black,
                            ),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 16, bottom: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  _buildListItem(context, 'Салат на выбор'),
                                  _buildListItem(context, 'Суп дня'),
                                  _buildListItem(context, 'Основное блюдо'),
                                  _buildListItem(context, 'Десерт'),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: context.colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Koktem Restaurant',
                              style: context.typography.bodyMbold.copyWith(
                                color: context.colors.black,
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  '4.9',
                                  style: context.typography.bodyMbold.copyWith(
                                    color: context.colors.black,
                                  ),
                                ),
                                const SizedBox(width: 4),
                                SvgPicture.asset(
                                  context.assetImages.star,
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 16),
                        DetailsDescriptionCardSecVariant(
                          title: 'Часы работы',
                          subtitle: 'Ежедневно с 08:00 до 02:00',
                          icon: context.assetImages.time,
                        ),
                        const SizedBox(height: 12),
                        DetailsDescriptionCardSecVariant(
                          title: 'Телефон',
                          subtitle: '+7 700 040 0220',
                          icon: context.assetImages.phone,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: context.colors.mainAccent,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Принять участие',
                        style: context.typography.bodyMbold.copyWith(
                          color: context.colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListItem(BuildContext context, String item) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
              color: context.colors.gray700,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              item,
              style: context.typography.bodyMregular.copyWith(
                color: context.colors.gray800,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
