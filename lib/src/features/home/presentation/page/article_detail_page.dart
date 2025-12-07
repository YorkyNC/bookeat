import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';
import 'package:bookeat/src/features/home/presentation/widgets/article_item_card.dart';

class ArticleDetailPage extends StatelessWidget {
  const ArticleDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.lightBackground,
      appBar: AppBar(
        backgroundColor: context.colors.white,
        elevation: 0,
        surfaceTintColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: CustomAppButton(
            padding: 12,
            aroundPadding: 0,
            icon: Icon(
              Icons.arrow_back,
              color: context.colors.gray700,
              size: 24,
            ),
            onTap: () => context.pop(),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomAppButton(
                  padding: 12,
                  aroundPadding: 0,
                  icon: Icon(
                    Icons.share,
                    color: context.colors.gray700,
                    size: 24,
                  ),
                  onTap: () {},
                ),
                const SizedBox(width: 8),
                CustomAppButton(
                  padding: 12,
                  aroundPadding: 0,
                  icon: Icon(
                    context.icons.heart,
                    color: context.colors.gray700,
                    size: 24,
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            Text(
              'Топ 10 азиатских ресторанов',
              style: context.typography.h3bold.copyWith(
                color: context.colors.black,
              ),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  size: 16,
                  color: context.colors.textGray,
                ),
                const SizedBox(width: 6),
                Text(
                  '12.08.2025',
                  style: context.typography.captionMregular.copyWith(
                    color: context.colors.textGray,
                  ),
                ),
                const SizedBox(width: 16),
                Icon(
                  Icons.access_time,
                  size: 16,
                  color: context.colors.textGray,
                ),
                const SizedBox(width: 6),
                Text(
                  '4 мин',
                  style: context.typography.captionMregular.copyWith(
                    color: context.colors.textGray,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Restaurant List
            ...List.generate(10, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          '${index + 1}.',
                          style: context.typography.h4bold.copyWith(
                            color: context.colors.black,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(
                          'Champagne - Breakfast',
                          style: context.typography.h4bold.copyWith(
                            color: context.colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.asset(
                        context.assetImages.example.path,
                        width: double.infinity,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      'Этот ресторан предлагает уникальное сочетание азиатской кухни с современными интерпретациями классических блюд. Шеф-повар использует только свежие ингредиенты и традиционные техники приготовления.',
                      style: context.typography.bodyMregular.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                  ],
                ),
              );
            }),

            const SizedBox(height: 32),

            // See Also Section
            Text(
              'Смотрите также',
              style: context.typography.h4bold.copyWith(
                color: context.colors.gray800,
              ),
            ),
            const SizedBox(height: 16),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 16,
                children: [
                  ArticleItemCard(
                    imagePath: context.assetImages.example.path,
                    title: 'Куда сходить сладкоежкам?',
                    description: 'Лучшие кондитерские и кафе с десертами',
                    date: '5 янв',
                    readTime: 5,
                  ),
                  ArticleItemCard(
                    imagePath: context.assetImages.example.path,
                    title: 'Романтические рестораны для свиданий',
                    description: 'Топ мест для особенных моментов',
                    date: '3 янв',
                    readTime: 7,
                  ),
                  ArticleItemCard(
                    imagePath: context.assetImages.example.path,
                    title: 'Завтраки выходного дня',
                    description: 'Где вкусно позавтракать в выходные',
                    date: '1 янв',
                    readTime: 6,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
