import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/components/search_text_field.dart';
import 'package:bookeat/src/core/constants/hero_tags.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final TextEditingController _searchController = TextEditingController();
  final FocusNode _focusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    // Auto-focus the search field when the page opens
    // Delay to allow hero animation to complete
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(milliseconds: 300), () {
        if (mounted) {
          _focusNode.requestFocus();
        }
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: HeroTags.searchField,
                child: Material(
                  color: Colors.transparent,
                  child: Row(
                    spacing: 8,
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
                          focusNode: _focusNode,
                          onChanged: (value) {
                            setState(() {});
                          },
                          onSubmitted: (value) {
                            debugPrint('Searching for: $value');
                          },
                        ),
                      ),
                      CustomAppButton(
                        onTap: () {
                          _searchController.clear();
                          context.pop();
                        },
                        padding: 16,
                        aroundPadding: 0,
                        icon: Icon(
                          context.icons.close,
                          color: context.colors.gray700,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 24),
              if (_searchController.text.isEmpty)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Популярные запросы',
                        style: context.typography.bodyMbold.copyWith(
                          color: context.colors.gray800,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Результаты поиска появятся здесь',
                        style: context.typography.bodyMregular.copyWith(
                          color: context.colors.gray500,
                        ),
                      ),
                    ],
                  ),
                )
              else
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Результаты поиска',
                        style: context.typography.bodyMbold.copyWith(
                          color: context.colors.gray800,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Text(
                        'Поиск: ${_searchController.text}',
                        style: context.typography.bodyMregular.copyWith(
                          color: context.colors.gray500,
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
