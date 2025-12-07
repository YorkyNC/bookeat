import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/components/search_text_field.dart';
import 'package:bookeat/src/core/constants/hero_tags.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';
import 'package:bookeat/src/features/home/presentation/app_bar/custom_home_appbar.dart';
import 'package:bookeat/src/features/home/presentation/widgets/article_item_card.dart';
import 'package:bookeat/src/features/home/presentation/widgets/main_sort_chips_widget.dart';
import 'package:bookeat/src/features/home/presentation/widgets/promotion_item_card.dart';
import 'package:bookeat/src/features/home/presentation/widgets/restourant_item_card.dart';
import 'package:bookeat/src/features/home/presentation/widgets/story_avatar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: const CustomHomeAppbar(),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: HeroTags.searchField,
                child: Material(
                  color: Colors.transparent,
                  child: GestureDetector(
                    onTap: () {
                      context.push(RoutePaths.search);
                    },
                    child: Row(
                      spacing: 12,
                      children: [
                        Expanded(
                          child: SearchTextField(
                            prefixIcon: Icon(
                              context.icons.search,
                              color: context.colors.gray700,
                              size: 24,
                            ),
                            hint: 'Чего бы вам хотелось?',
                            controller: _searchController,
                            enabled: false,
                            onChanged: (value) {
                              setState(() {});
                            },
                            onSubmitted: (value) {
                              debugPrint('Searching for: $value');
                            },
                            onClear: () {
                              setState(() {});
                            },
                          ),
                        ),
                        CustomAppButton(
                          padding: 16,
                          aroundPadding: 0,
                          icon: Icon(
                            Icons.filter_list,
                            color: context.colors.gray700,
                            size: 24,
                          ),
                          onTap: () {
                            context.push(RoutePaths.filter);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              MainSortChipsWidget(),
              const SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    spacing: 12,
                    children: [
                      ...List.generate(
                          10,
                          (index) => StoryAvatar(
                                imagePath: context.assetImages.logo,
                                label: 'Welcome to BookEat',
                                onTap: () {},
                              )),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Нужен столик сейчас?',
                    style: context.typography.bodyMbold.copyWith(
                      color: context.colors.gray800,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 16,
                      children: [
                        ...List.generate(
                          10,
                          (index) => RestourantItemCard(
                            imagePath: context.assetImages.example.path,
                            name: 'Koktem',
                            rating: '4.5',
                            discount: '15%',
                            averageCheck: '~ 10 000 ₸',
                            availableTime: '10:00 - 22:00',
                            availableGuests: '2',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                ],
              ),
              SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Акции',
                    style: context.typography.bodyMbold.copyWith(
                      color: context.colors.gray800,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 16,
                      children: [
                        PromotionItemCard(
                          imagePath: context.assetImages.example.path,
                          title: 'Скидка 20% на первое бронирование',
                          discount: '20%',
                          date: '15 января 2025',
                          description: 'Забронируйте столик и получите скидку 20% на первый заказ',
                        ),
                        PromotionItemCard(
                          imagePath: context.assetImages.example.path,
                          title: 'Живая музыка каждую пятницу',
                          discount: 'Free',
                          date: '8 января 2025',
                          description: 'Приходите в пятницу вечером и наслаждайтесь живой музыкой',
                        ),
                        PromotionItemCard(
                          imagePath: context.assetImages.example.path,
                          title: 'Специальное меню на День влюбленных',
                          discount: '15%',
                          date: '14 февраля 2025',
                          description: 'Романтический ужин со скидкой для двоих',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 32),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Статьи',
                    style: context.typography.bodyMbold.copyWith(
                      color: context.colors.gray800,
                    ),
                  ),
                  SizedBox(height: 20),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 16,
                      children: [
                        ArticleItemCard(
                          imagePath: context.assetImages.example.path,
                          title: 'Лучшие рестораны Алматы 2025',
                          description: 'Топ-10 ресторанов, которые стоит посетить в этом году',
                          author: 'BookEat Team',
                          date: '10 янв',
                          readTime: 5,
                        ),
                        ArticleItemCard(
                          imagePath: context.assetImages.example.path,
                          title: 'Как правильно выбрать вино к ужину',
                          description: 'Руководство по выбору идеального вина для вашего блюда',
                          author: 'Сомелье Айдар',
                          date: '5 янв',
                          readTime: 7,
                        ),
                        ArticleItemCard(
                          imagePath: context.assetImages.example.path,
                          title: 'Тренды в ресторанной индустрии 2025',
                          description: 'Что нового ждет нас в мире гастрономии в этом году',
                          author: 'BookEat Team',
                          date: '1 янв',
                          readTime: 10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
