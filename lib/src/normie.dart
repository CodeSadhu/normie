import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:normie/utils/regex.dart';

class Normie {
  Normie._();

  static String formatDate({
    required String date,

    /// Defaults to 'dd/MM/yyyy'
    String? inputFormat,

    /// Defaults to 'yyyy/MM/dd'
    String? outputFormat,
  }) {
    DateFormat? inFormat = DateFormat(inputFormat ?? 'dd/MM/yyyy');
    DateFormat? outFormat = DateFormat(outputFormat ?? 'yyyy/MM/dd');

    DateTime? inputDate = inFormat.parse(date);
    String outputDate = outFormat.format(inputDate);

    return outputDate;
  }

  String getWeekDayDate({required String date, String? format}) {
    int weekday = DateFormat(format ?? 'dd-MM-yyyy').parse(date).weekday;
    try {
      switch (weekday) {
        case 1:
          return 'Monday';

        case 2:
          return 'Tuesday';

        case 3:
          return 'Wednesday';

        case 4:
          return 'Thursday';

        case 5:
          return 'Friday';

        case 6:
          return 'Saturday';

        case 7:
          return 'Sunday';
      }
    } catch (e) {
      throw (e.toString());
    }
    return '';
  }

  static String getStringInitial(String? text) {
    if (text == null) return '';

    var titleCaseString = text;
    if (titleCaseString.isNotEmpty) {
      return titleCaseString
          .trim()
          .split(RegExp(' +'))
          .map((s) => s[0])
          .take(1)
          .join();
    } else {
      return '';
    }
  }

  static String titleCase(String text) {
    if (text.isEmpty) return '';

    if (text.length <= 1) return text.toUpperCase();

    var words = text.trim().split(' ');

    var capitalized = words.map((word) {
      var first = word.substring(0, 1).toUpperCase();
      var rest = word.substring(1);
      return '$first$rest';
    });

    return capitalized.join(' ');
  }

  static Color hexToColor(String code) {
    final buffer = StringBuffer();

    if (code.length == 6 || code.length == 7) buffer.write('ff');

    buffer.write(code.replaceFirst('#', ''));
    Color color = Color(int.parse(buffer.toString(), radix: 16));

    return color;
  }

  static String colorToHex(Color color) {
    String hex = color.value
        .toRadixString(16)
        .substring(2, color.value.toRadixString(16).length);
    return hex;
  }

  static bool isValidEmail(String value) {
    RegExp regex = RegExp(Regex.email);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static getFileExtension(String filePath) {
    try {
      return '.${filePath.split('.').last}';
    } catch (e) {
      throw ('Could not retriev file extension. Error: $e');
    }
  }
}
