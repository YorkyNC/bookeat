import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:intl/intl.dart';

class DatePickerSheet extends StatefulWidget {
  const DatePickerSheet({
    super.key,
  });

  @override
  State<DatePickerSheet> createState() => _DatePickerSheetState();
}

class _DatePickerSheetState extends State<DatePickerSheet> {
  DateTime? _selectedDate;
  DateTime _currentMonth = DateTime.now();

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  void _selectDate(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  void _selectToday() {
    final today = DateTime.now();
    setState(() {
      _selectedDate = today;
      _currentMonth = DateTime(today.year, today.month);
    });
  }

  void _selectTomorrow() {
    final tomorrow = DateTime.now().add(const Duration(days: 1));
    setState(() {
      _selectedDate = tomorrow;
      _currentMonth = DateTime(tomorrow.year, tomorrow.month);
    });
  }

  List<DateTime> _getDaysInMonth(DateTime month) {
    final firstDay = DateTime(month.year, month.month, 1);
    final lastDay = DateTime(month.year, month.month + 1, 0);
    final firstDayOfWeek = firstDay.weekday - 1;
    final daysInMonth = lastDay.day;

    final List<DateTime> days = [];

    final prevMonth = DateTime(month.year, month.month - 1);
    final daysInPrevMonth = DateTime(prevMonth.year, prevMonth.month + 1, 0).day;
    for (int i = firstDayOfWeek - 1; i >= 0; i--) {
      days.add(DateTime(prevMonth.year, prevMonth.month, daysInPrevMonth - i));
    }

    for (int i = 1; i <= daysInMonth; i++) {
      days.add(DateTime(month.year, month.month, i));
    }

    final remainingDays = 42 - days.length;
    for (int i = 1; i <= remainingDays; i++) {
      days.add(DateTime(month.year, month.month + 1, i));
    }

    return days;
  }

  bool _isSameDay(DateTime? date1, DateTime date2) {
    if (date1 == null) return false;
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }

  bool _isPastDate(DateTime date) {
    final today = DateTime.now();
    final todayOnly = DateTime(today.year, today.month, today.day);
    final dateOnly = DateTime(date.year, date.month, date.day);
    return dateOnly.isBefore(todayOnly);
  }

  Widget _buildMonthCalendar(DateTime month) {
    final days = _getDaysInMonth(month);
    final monthName = DateFormat('MMMM yyyy', 'ru').format(month);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 16, top: 8),
          child: Text(
            monthName,
            style: context.typography.h3semibold.copyWith(color: context.colors.textprimary),
          ),
        ),
        Table(
          children: [
            TableRow(
              children: ['ПН', 'ВТ', 'СР', 'ЧТ', 'ПТ', 'СБ', 'ВС']
                  .map((day) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: Center(
                          child: Text(
                            day,
                            style: context.typography.bodyLregular.copyWith(
                              color: context.colors.textGray,
                            ),
                          ),
                        ),
                      ))
                  .toList(),
            ),
            ...List.generate(6, (weekIndex) {
              return TableRow(
                children: List.generate(7, (colIndex) {
                  final dayIndex = weekIndex * 7 + colIndex;
                  if (dayIndex >= days.length) {
                    return const SizedBox.shrink();
                  }
                  final date = days[dayIndex];
                  final isSelected = _isSameDay(_selectedDate, date);
                  final isPast = _isPastDate(date);
                  final isCurrentMonthDay = date.month == month.month;

                  return GestureDetector(
                    onTap: isPast || !isCurrentMonthDay ? null : () => _selectDate(date),
                    child: Container(
                      height: 40,
                      margin: const EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isSelected ? context.colors.mainAccent : Colors.transparent,
                      ),
                      child: Center(
                        child: Text(
                          '${date.day}',
                          style: context.typography.bodyLregular.copyWith(
                            color: isSelected
                                ? context.colors.white
                                : (isPast || !isCurrentMonthDay ? context.colors.textGray : context.colors.textprimary),
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              );
            }),
          ],
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final today = DateTime.now();
    final isTodaySelected = _isSameDay(_selectedDate, today);
    final tomorrow = today.add(const Duration(days: 1));
    final isTomorrowSelected = _isSameDay(_selectedDate, tomorrow);

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: _QuickDateButton(
                        label: 'Сегодня',
                        isSelected: isTodaySelected,
                        onTap: _selectToday,
                      ),
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: _QuickDateButton(
                        label: 'Завтра',
                        isSelected: isTomorrowSelected,
                        onTap: _selectTomorrow,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                Column(
                  children: [
                    _buildMonthCalendar(_currentMonth),
                    if (_currentMonth.month < 12 || _currentMonth.year < DateTime.now().year + 1)
                      _buildMonthCalendar(DateTime(_currentMonth.year, _currentMonth.month + 1)),
                  ],
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    context.pop(_selectedDate);
                  },
                  child: Text('Выбрать'),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _QuickDateButton extends StatelessWidget {
  final String label;
  final bool isSelected;
  final VoidCallback onTap;

  const _QuickDateButton({
    required this.label,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        decoration: BoxDecoration(
          color: isSelected ? context.colors.containerColor3 : context.colors.white,
          border: Border.all(
            color: isSelected ? context.colors.mainAccent : context.colors.chipBorderColor,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            label,
            style: context.typography.bodyLregular.copyWith(
              color: context.colors.textprimary,
            ),
          ),
        ),
      ),
    );
  }
}
