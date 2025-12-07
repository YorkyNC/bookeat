import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:bookeat/src/core/widgets/popups/sheet_popup.dart';
import 'package:bookeat/src/features/home/presentation/widgets/booking_picker_sheet.dart';
import 'package:bookeat/src/features/home/presentation/widgets/main_sort_chip.dart';
import 'package:intl/intl.dart';

class MainSortChipsWidget extends StatefulWidget {
  const MainSortChipsWidget({super.key});

  @override
  State<MainSortChipsWidget> createState() => _MainSortChipsWidgetState();
}

class _MainSortChipsWidgetState extends State<MainSortChipsWidget> {
  int _selectedGuests = 2;
  DateTime? _selectedDate;
  String? _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = '19:30';
  }

  void _openBookingPicker() {
    showSheetPopup(
      context,
      backgroundColor: Colors.white,
      builder: (context) => BookingPickerSheet(),
    ).then((result) {
      if (result != null && mounted) {
        setState(() {
          _selectedGuests = result['guests'] ?? 2;
          _selectedDate = result['date'] ?? DateTime.now();
          _selectedTime = result['time'] ?? '19:30';
        });
      }
    });
  }

  String _getDateLabel() {
    if (_selectedDate == null) return 'Today';
    final today = DateTime.now();
    if (_isSameDay(_selectedDate, today)) {
      return 'Today';
    }
    final tomorrow = today.add(const Duration(days: 1));
    if (_isSameDay(_selectedDate, tomorrow)) {
      return 'Tomorrow';
    }
    return DateFormat('EEE, d MMM', 'en').format(_selectedDate!);
  }

  String _getBookingLabel() {
    return '${_getDateLabel()} • $_selectedTime • $_selectedGuests guests';
  }

  bool _isSameDay(DateTime? date1, DateTime date2) {
    if (date1 == null) return false;
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        MainSortChip(
          onTap: _openBookingPicker,
          icon: Icons.calendar_today_outlined,
          label: _getBookingLabel(),
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
