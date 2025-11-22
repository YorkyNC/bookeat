import 'package:intl/intl.dart';

import '../utils/extensions/string_extensions.dart';

extension DateTimeExtension on DateTime {
  String get formatTime {
    final utcDateTime = toUtc();
    final astanaOffset = const Duration(hours: 6);
    final astanaDateTime = utcDateTime.add(astanaOffset);
    return DateFormat('HH:mm').format(astanaDateTime);
  }

  String get formatDateTime => DateFormat('dd.MM.yyyy HH:mm').format(this);
  String get formatDate => DateFormat('dd.MM.yyyy').format(this);
  String get formatDateShortly => DateFormat('dd.MM').format(this);
  String get formatDateFull => DateFormat("dd MMMM, y").format(this);
  String get formatDateWithMonth => DateFormat("d MMMM").format(this);
  String get formatDateShortMonth => DateFormat("d MMM", 'ru').format(this);
  String get formatWeekday => DateFormat("EEEE").format(this);
  String get formatWeekdayShort => DateFormat("EE").format(this);
  String get formatDateWithWeekday =>
      "${DateFormat('dd.MM').format(this)} ${DateFormat("EEEE").format(this).uppercaseFirst()}";
  String get formatDateTimeFull {
    final astanaOffset = const Duration(hours: 6);
    final utcDateTime = toUtc();
    final astanaDateTime = utcDateTime.add(astanaOffset);
    return DateFormat('dd MMMM HH:mm').format(astanaDateTime);
  }

  String get formatDateWithMonthYearAndWeekday =>
      "${DateFormat("d MMMM yyyy").format(this)}, ${DateFormat("EEEE").format(this)}";

  bool get isToday {
    final now = DateTime.now();
    return now.year == year && now.month == month && now.day == day;
  }

  bool get isYesterday {
    final yesterday = DateTime.now().subtract(const Duration(days: 1));
    return yesterday.year == year && yesterday.month == month && yesterday.day == day;
  }

  static String formatDatePeriod(DateTime startDate, DateTime? endDate) {
    if (endDate != null) {
      return "${startDate.formatDate}-${endDate.formatDate}";
    }
    return startDate.formatDate;
  }

  static String formatDatePeriodFull(DateTime startDate, DateTime? endDate) {
    if (endDate != null) {
      return "${startDate.formatDateFull} - ${endDate.formatDateFull}";
    }
    return startDate.formatDateFull;
  }

  static String formatDatePeriodWithWeekday(DateTime startDate, DateTime? endDate) {
    if (endDate != null) {
      return "${startDate.formatWeekday}, ${startDate.formatDate} - ${endDate.formatWeekday}, ${endDate.formatDate}";
    }
    return "${startDate.formatWeekday}, ${startDate.formatDate}";
  }
}
