part of '../normie.dart';

class _Words {
  const _Words();

  String reverse(String text) => text.split('').reversed.join();

  String truncate(String text, int length) => text.substring(0, length);

  String truncateWithEllipsis(String text, int maxLength) {
    if (text.length <= maxLength) return text;
    return '${text.substring(0, maxLength)}...';
  }

  String getStringInitial(String? text) {
    if (text == null) return '';

    var titleCaseString = text;
    if (titleCaseString.isNotEmpty) {
      return titleCaseString
          .trim()
          .split(RegExp(' +'))
          .map((s) => s[0])
          .take(1)
          .join();
    }
    return '';
  }

  String titleCase(String text) {
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

  String slugify(String text) {
    return text
        .toLowerCase()
        .replaceAll(RegExp(r'[^a-z0-9]+'), '-')
        .replaceAll(RegExp(r'^-+|-+$'), '');
  }

  String mask(
    String text, {
    int? visibleStart,
    int? visibleEnd,
    String maskChar = '*',
  }) {
    if (text.isEmpty) return '';

    final start = visibleStart ?? 0;
    final end = visibleEnd ?? 0;
    final middle = '*' * (text.length - start - end);

    return text.substring(0, start) +
        middle +
        text.substring(text.length - end);
  }

  String capitalize(String text) {
    if (text.isEmpty) return '';
    return text[0].toUpperCase() + text.substring(1);
  }

  String removeAccents(String text) {
    const withAccents = 'àáâãäçèéêëìíîïñòóôõöùúûüýÿÀÁÂÃÄÇÈÉÊËÌÍÎÏÑÒÓÔÕÖÙÚÛÜÝ';
    const withoutAccents =
        'aaaaaceeeeiiiinooooouuuuyyAAAAACEEEEIIIINOOOOOUUUUY';

    return text.split('').map((char) {
      final index = withAccents.indexOf(char);
      return index != -1 ? withoutAccents[index] : char;
    }).join();
  }
}
