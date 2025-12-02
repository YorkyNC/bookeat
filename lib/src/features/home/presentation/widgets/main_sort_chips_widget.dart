import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/popups/sheet_popup.dart';
import 'package:bookeat/src/features/home/presentation/widgets/date_picker_sheet.dart';
import 'package:bookeat/src/features/home/presentation/widgets/guest_picker_sheet.dart';
import 'package:bookeat/src/features/home/presentation/widgets/main_sort_chip.dart';
import 'package:bookeat/src/features/home/presentation/widgets/time_picker_sheet.dart';

class MainSortChipsWidget extends StatelessWidget {
  const MainSortChipsWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        MainSortChip(
          onTap: () {
            showSheetPopup(
              title: Text('Выберите дату'),
              context,
              builder: (context) => DatePickerSheet(),
            );
          },
          icon: Icons.calendar_today_outlined,
          label: '12.12.2025',
          isExpandeable: true,
        ),
        MainSortChip(
          onTap: () {
            showSheetPopup(
              title: Text('Выберите время'),
              context,
              builder: (context) => TimePickerSheet(),
            );
          },
          icon: Icons.access_time_outlined,
          label: '12:00',
          isExpandeable: true,
        ),
        MainSortChip(
          onTap: () {
            showSheetPopup(
              title: Text('Выберите количество гостей'),
              context,
              builder: (context) => GuestPickerSheet(),
            );
          },
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
