import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/components/search_text_field.dart';
import 'package:bookeat/src/core/constants/hero_tags.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/router/router.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';
import 'package:bookeat/src/features/home/presentation/app_bar/custom_home_appbar.dart';
import 'package:bookeat/src/features/home/presentation/widgets/main_sort_chips_widget.dart';
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
                          onTap: () {},
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
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
