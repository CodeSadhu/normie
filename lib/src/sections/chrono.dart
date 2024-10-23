part of '../normie.dart';

class _Chrono {
  const _Chrono();

  String format({
    required String date,
    String? inputFormat,
    String? outputFormat,
  }) {
    final inFormat = DateFormat(inputFormat ?? 'dd/MM/yyyy');
    final outFormat = DateFormat(outputFormat ?? 'yyyy/MM/dd');

    final inputDate = inFormat.parse(date);
    return outFormat.format(inputDate);
  }

  String getWeekDay({
    required String date,
    String? format,
    bool short = false,
  }) {
    int weekday = DateFormat(format ?? 'dd-MM-yyyy').parse(date).weekday;
    final days = short
        ? ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun']
        : [
            'Monday',
            'Tuesday',
            'Wednesday',
            'Thursday',
            'Friday',
            'Saturday',
            'Sunday'
          ];
    return days[weekday - 1];
  }

  String timeAgo(DateTime dateTime) {
    final difference = DateTime.now().difference(dateTime);

    if (difference.inDays > 365) {
      return '${(difference.inDays / 365).floor()} years ago';
    } else if (difference.inDays > 30) {
      return '${(difference.inDays / 30).floor()} months ago';
    } else if (difference.inDays > 0) {
      return '${difference.inDays} days ago';
    } else if (difference.inHours > 0) {
      return '${difference.inHours} hours ago';
    } else if (difference.inMinutes > 0) {
      return '${difference.inMinutes} minutes ago';
    }
    return 'just now';
  }

  Duration countdown(DateTime endDate) {
    return endDate.difference(DateTime.now());
  }

  bool isSameDay(DateTime date1, DateTime date2) {
    return date1.year == date2.year &&
        date1.month == date2.month &&
        date1.day == date2.day;
  }

  DateTime startOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day);
  }

  DateTime endOfDay(DateTime date) {
    return DateTime(date.year, date.month, date.day, 23, 59, 59, 999);
  }

  List<DateTime> getDaysInMonth(DateTime date) {
    final daysInMonth = DateTime(date.year, date.month + 1, 0).day;
    return List.generate(
      daysInMonth,
      (i) => DateTime(date.year, date.month, i + 1),
    );
  }
}
