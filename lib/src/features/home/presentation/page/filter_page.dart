import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/buttons/custom_app_button.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({super.key});

  @override
  State<FilterPage> createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  // Тип заведения
  final Set<String> _selectedEstablishmentTypes = {};

  // Тип кухни
  final Set<String> _selectedCuisineTypes = {};

  // Локация
  String? _selectedLocation;

  // Рейтинг
  String? _selectedRating;

  // Средний чек
  String? _selectedAverageCheck;

  // Предзаказ
  bool _onlyWithPreOrder = false;

  // Акции и события
  final Set<String> _selectedPromotions = {};

  int _getResultCount() {
    // Здесь должна быть логика подсчета результатов на основе фильтров
    // Пока возвращаем примерное значение
    return 42;
  }

  void _clearAllFilters() {
    setState(() {
      _selectedEstablishmentTypes.clear();
      _selectedCuisineTypes.clear();
      _selectedLocation = null;
      _selectedRating = null;
      _selectedAverageCheck = null;
      _onlyWithPreOrder = false;
      _selectedPromotions.clear();
    });
  }

  void _applyFilters() {
    // Здесь должна быть логика применения фильтров
    context.pop();
  }

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
              context.icons.chevron_left,
              color: context.colors.gray700,
              size: 20,
            ),
            onTap: () => context.pop(),
          ),
        ),
        title: Text(
          'Фильтры',
          style: context.typography.h3semibold.copyWith(
            color: context.colors.gray800,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 1. Тип заведения
                  _buildSectionCard(
                    title: 'Тип заведения',
                    subtitle: 'Формат посещения',
                    icon: context.icons.home,
                    child: _buildChipSection(
                      options: [
                        'Ресторан',
                        'Кафе',
                        'Бар',
                        'Быстрое питание',
                        'Вегетарианский',
                        'Семейный',
                      ],
                      selected: _selectedEstablishmentTypes,
                      icons: {
                        'Ресторан': Icons.restaurant,
                        'Кафе': Icons.local_cafe,
                        'Бар': Icons.local_bar,
                        'Быстрое питание': Icons.fastfood,
                        'Вегетарианский': Icons.eco,
                        'Семейный': Icons.family_restroom,
                      },
                      onTap: (option) {
                        setState(() {
                          if (_selectedEstablishmentTypes.contains(option)) {
                            _selectedEstablishmentTypes.remove(option);
                          } else {
                            _selectedEstablishmentTypes.add(option);
                          }
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 2. Тип кухни
                  _buildSectionCard(
                    title: 'Тип кухни',
                    subtitle: 'По предпочтениям пользователя',
                    icon: Icons.restaurant_menu,
                    child: _buildChipSection(
                      options: [
                        'Европейская',
                        'Итальянская',
                        'Японская',
                        'Корейская',
                        'Восточная',
                        'Американская',
                        'Грузинская',
                        'Узбекская',
                        'Казахстанская',
                        'Авторская',
                        'Вегетарианская / ЗОЖ',
                        'Мясная / гриль',
                      ],
                      selected: _selectedCuisineTypes,
                      onTap: (option) {
                        setState(() {
                          if (_selectedCuisineTypes.contains(option)) {
                            _selectedCuisineTypes.remove(option);
                          } else {
                            _selectedCuisineTypes.add(option);
                          }
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 3. Локация
                  _buildSectionCard(
                    title: 'Локация',
                    icon: context.icons.map_pin,
                    child: _buildSingleSelectSection(
                      options: [
                        'Рядом со мной',
                        'Выбрать район / на карте',
                      ],
                      selected: _selectedLocation,
                      icons: {
                        'Рядом со мной': Icons.near_me,
                        'Выбрать район / на карте': context.icons.map,
                      },
                      onTap: (option) {
                        setState(() {
                          _selectedLocation = _selectedLocation == option ? null : option;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 4. Рейтинг
                  _buildSectionCard(
                    title: 'Рейтинг',
                    icon: context.icons.star_filled,
                    child: _buildSingleSelectSection(
                      options: [
                        '4.5+',
                        '4.0+',
                        'Любой',
                      ],
                      selected: _selectedRating,
                      icons: {
                        '4.5+': context.icons.star_filled,
                        '4.0+': context.icons.star_filled,
                        'Любой': context.icons.star,
                      },
                      onTap: (option) {
                        setState(() {
                          _selectedRating = _selectedRating == option ? null : option;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 5. Средний чек
                  _buildSectionCard(
                    title: 'Средний чек',
                    icon: context.icons.money,
                    child: _buildSingleSelectSection(
                      options: [
                        'До 5000 ₸',
                        '5000–15.000₸',
                        '15.000+ ₸',
                      ],
                      selected: _selectedAverageCheck,
                      onTap: (option) {
                        setState(() {
                          _selectedAverageCheck = _selectedAverageCheck == option ? null : option;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 6. Предзаказ
                  _buildSectionCard(
                    title: 'Предзаказ',
                    icon: context.icons.calendar,
                    child: _buildCheckboxOption(
                      title: 'Только с предзаказом',
                      value: _onlyWithPreOrder,
                      onChanged: (value) {
                        setState(() {
                          _onlyWithPreOrder = value ?? false;
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 16),

                  // 7. Акции и события
                  _buildSectionCard(
                    title: 'Акции и события',
                    icon: context.icons.gift,
                    child: _buildChipSection(
                      options: [
                        'С акциями',
                        'С живой музыкой',
                        'Скидка на первое бронирование',
                      ],
                      selected: _selectedPromotions,
                      icons: {
                        'С акциями': context.icons.gift,
                        'С живой музыкой': Icons.music_note,
                        'Скидка на первое бронирование': Icons.local_offer,
                      },
                      onTap: (option) {
                        setState(() {
                          if (_selectedPromotions.contains(option)) {
                            _selectedPromotions.remove(option);
                          } else {
                            _selectedPromotions.add(option);
                          }
                        });
                      },
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ),
          ),

          // Кнопки внизу
          Container(
            padding: const EdgeInsets.fromLTRB(16, 12, 16, 16),
            decoration: BoxDecoration(
              color: context.colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.08),
                  blurRadius: 20,
                  offset: const Offset(0, -4),
                ),
              ],
            ),
            child: SafeArea(
              top: false,
              child: Row(
                spacing: 12,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: _clearAllFilters,
                      style: OutlinedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        side: BorderSide(
                          color: context.colors.chipBorderColor,
                          width: 1.5,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        backgroundColor: context.colors.white,
                      ),
                      child: Text(
                        'Очистить',
                        style: context.typography.bodyMbold.copyWith(
                          color: context.colors.gray800,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: _applyFilters,
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        backgroundColor: context.colors.mainAccent,
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Показать результаты (${_getResultCount()})',
                        style: context.typography.bodyMbold.copyWith(
                          color: context.colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    String? subtitle,
    IconData? icon,
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: context.colors.chipBorderColor.withValues(alpha: 0.5),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              if (icon != null) ...[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: context.colors.mainAccent.withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Icon(
                    icon,
                    size: 20,
                    color: context.colors.mainAccent,
                  ),
                ),
                const SizedBox(width: 12),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: context.typography.titlebold.copyWith(
                        color: context.colors.gray800,
                      ),
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 2),
                      Text(
                        subtitle,
                        style: context.typography.captionMregular.copyWith(
                          color: context.colors.textGray,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          child,
        ],
      ),
    );
  }

  Widget _buildChipSection({
    required List<String> options,
    required Set<String> selected,
    required Function(String) onTap,
    Map<String, IconData>? icons,
  }) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: options.map((option) {
        final isSelected = selected.contains(option);
        final icon = icons?[option];
        return Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onTap(option),
            borderRadius: BorderRadius.circular(10),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.symmetric(
                horizontal: icon != null ? 12 : 14,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: isSelected ? context.colors.mainAccent : context.colors.grey100,
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                  color: isSelected ? context.colors.mainAccent : context.colors.chipBorderColor,
                  width: isSelected ? 0 : 1,
                ),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (icon != null) ...[
                    Icon(
                      icon,
                      size: 16,
                      color: isSelected ? context.colors.white : context.colors.gray700,
                    ),
                    const SizedBox(width: 6),
                  ],
                  Text(
                    option,
                    style: context.typography.bodyMmedium.copyWith(
                      color: isSelected ? context.colors.white : context.colors.gray800,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }).toList(),
    );
  }

  Widget _buildSingleSelectSection({
    required List<String> options,
    required String? selected,
    required Function(String) onTap,
    Map<String, IconData>? icons,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.grey100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: options.asMap().entries.map((entry) {
          final index = entry.key;
          final option = entry.value;
          final isSelected = selected == option;
          final isLast = index == options.length - 1;
          final icon = icons?[option];

          return Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () => onTap(option),
              borderRadius: isLast
                  ? const BorderRadius.vertical(bottom: Radius.circular(12))
                  : index == 0
                      ? const BorderRadius.vertical(top: Radius.circular(12))
                      : BorderRadius.zero,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                decoration: BoxDecoration(
                  border: isLast
                      ? null
                      : Border(
                          bottom: BorderSide(
                            color: context.colors.chipBorderColor.withValues(alpha: 0.3),
                            width: 1,
                          ),
                        ),
                ),
                child: Row(
                  children: [
                    if (icon != null) ...[
                      Icon(
                        icon,
                        size: 20,
                        color: isSelected ? context.colors.mainAccent : context.colors.gray500,
                      ),
                      const SizedBox(width: 12),
                    ],
                    Expanded(
                      child: Text(
                        option,
                        style: context.typography.bodyMmedium.copyWith(
                          color: context.colors.gray800,
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? context.colors.mainAccent : Colors.transparent,
                        border: Border.all(
                          color: isSelected ? context.colors.mainAccent : context.colors.chipBorderColor,
                          width: 2,
                        ),
                      ),
                      child: isSelected
                          ? Icon(
                              Icons.check,
                              size: 16,
                              color: context.colors.white,
                            )
                          : null,
                    ),
                  ],
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }

  Widget _buildCheckboxOption({
    required String title,
    required bool value,
    required Function(bool?) onChanged,
  }) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: () => onChanged(!value),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  title,
                  style: context.typography.bodyMmedium.copyWith(
                    color: context.colors.gray800,
                  ),
                ),
              ),
              const SizedBox(width: 12),
              AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  color: value ? context.colors.mainAccent : Colors.transparent,
                  border: Border.all(
                    color: value ? context.colors.mainAccent : context.colors.chipBorderColor,
                    width: 2,
                  ),
                ),
                child: value
                    ? Icon(
                        Icons.check,
                        size: 16,
                        color: context.colors.white,
                      )
                    : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
