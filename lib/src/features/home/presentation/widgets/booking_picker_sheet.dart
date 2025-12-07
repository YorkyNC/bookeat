import 'package:bookeat/src/app/imports.dart';
import 'package:bookeat/src/core/extensions/build_context_extension.dart';
import 'package:intl/intl.dart';

class BookingPickerSheet extends StatefulWidget {
  const BookingPickerSheet({super.key});

  @override
  State<BookingPickerSheet> createState() => _BookingPickerSheetState();
}

class _BookingPickerSheetState extends State<BookingPickerSheet> {
  int _selectedGuests = 2;
  DateTime? _selectedDate;
  String? _selectedTime;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    _selectedTime = '19:30';
  }

  List<Map<String, dynamic>> _getAvailableDates() {
    final today = DateTime.now();
    final dates = <Map<String, dynamic>>[];

    dates.add({
      'label': 'Today',
      'date': today,
      'day': 'Today',
    });

    final tomorrow = today.add(const Duration(days: 1));
    dates.add({
      'label': 'Tomorrow',
      'date': tomorrow,
      'day': 'Tomorrow',
    });

    for (int i = 2; i <= 30; i++) {
      final date = today.add(Duration(days: i));
      dates.add({
        'label': DateFormat('EEE, d MMM', 'en').format(date),
        'date': date,
        'day': DateFormat('EEE', 'en').format(date),
      });
    }

    return dates;
  }

  List<String> _getAvailableTimes() {
    final times = <String>['Now'];

    for (int hour = 10; hour < 24; hour++) {
      for (int minute = 0; minute < 60; minute += 30) {
        final timeString = '${hour.toString().padLeft(2, '0')}:${minute.toString().padLeft(2, '0')}';
        times.add(timeString);
      }
    }

    return times;
  }

  bool _isSameDay(DateTime? date1, DateTime date2) {
    if (date1 == null) return false;
    return date1.year == date2.year && date1.month == date2.month && date1.day == date2.day;
  }

  @override
  Widget build(BuildContext context) {
    final dates = _getAvailableDates();
    final times = _getAvailableTimes();

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Party size',
                style: context.typography.titlebold.copyWith(
                  color: context.colors.black,
                ),
              ),
              const SizedBox(height: 16),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  spacing: 12,
                  children: List.generate(7, (index) {
                    final number = index + 1;
                    final isSelected = _selectedGuests == number;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          _selectedGuests = number;
                        });
                      },
                      child: Container(
                        width: 56,
                        height: 56,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: isSelected ? context.colors.mainAccent : context.colors.chipBorderColor,
                            width: isSelected ? 2 : 1,
                          ),
                          color: Colors.transparent,
                        ),
                        child: Center(
                          child: Text(
                            '$number',
                            style: context.typography.bodyMbold.copyWith(
                              color: isSelected ? context.colors.mainAccent : context.colors.textGray,
                            ),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ],
          ),
        ),
        const Divider(height: 1),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Date and time',
                style: context.typography.titlebold.copyWith(
                  color: context.colors.black,
                ),
              ),
              const SizedBox(height: 16),
              SizedBox(
                height: 200,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: dates.length,
                        itemBuilder: (context, index) {
                          final dateItem = dates[index];
                          final isSelected = _isSameDay(_selectedDate, dateItem['date'] as DateTime);
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedDate = dateItem['date'] as DateTime;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                color: isSelected ? context.colors.grey100 : Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                dateItem['label'] as String,
                                style: context.typography.bodyMmedium.copyWith(
                                  color: context.colors.black,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ListView.builder(
                        itemCount: times.length,
                        itemBuilder: (context, index) {
                          final time = times[index];
                          final isSelected = _selectedTime == time;
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                _selectedTime = time;
                              });
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                              margin: const EdgeInsets.only(bottom: 8),
                              decoration: BoxDecoration(
                                color: isSelected ? context.colors.grey100 : Colors.transparent,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text(
                                time,
                                style: context.typography.bodyMmedium.copyWith(
                                  color: isSelected ? context.colors.black : context.colors.textGray,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {
              context.pop({
                'guests': _selectedGuests,
                'date': _selectedDate,
                'time': _selectedTime,
              });
            },
            child: Text(
              'Done',
              style: context.typography.bodyMbold.copyWith(
                color: context.colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
