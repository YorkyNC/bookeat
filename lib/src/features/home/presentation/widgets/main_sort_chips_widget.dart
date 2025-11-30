import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/features/home/presentation/widgets/main_sort_chip.dart';

class MainSortChipsWidget extends StatelessWidget {
  const MainSortChipsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        MainSortChip(
          icon: Icons.calendar_today_outlined,
          label: '30 ноября',
          isExpandeable: true,
        ),
        MainSortChip(
          icon: Icons.access_time_outlined,
          label: '19:00',
          isExpandeable: true,
        ),
        MainSortChip(
          icon: Icons.people_alt_outlined,
          label: ' 2 гостя',
          isExpandeable: true,
        ),
        MainSortChip(
          icon: Icons.search_outlined,
          label: 'Найти',
          isExpandeable: false,
          color: context.colors.mainAccent,
          isSearch: true,
        ),
      ],
    );
  }
}
