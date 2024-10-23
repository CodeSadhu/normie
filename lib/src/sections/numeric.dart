part of '../normie.dart';

class _Numeric {
  const _Numeric();

  String formatCurrency(
    double amount, {
    String symbol = '\$',
    int decimalPlaces = 2,
    String locale = 'en_US',
  }) {
    return NumberFormat.currency(
      symbol: symbol,
      decimalDigits: decimalPlaces,
      locale: locale,
    ).format(amount);
  }

  String formatFileSize(int bytes) {
    if (bytes <= 0) return '0 B';
    const suffixes = ['B', 'KB', 'MB', 'GB', 'TB'];
    var i = (math.log(bytes) / math.log(1024)).floor();
    return '${(bytes / math.pow(1024, i)).toStringAsFixed(2)} ${suffixes[i]}';
  }

  String formatNumber(
    num number, {
    int? decimalPlaces,
    bool compact = false,
    String locale = 'en_US',
  }) {
    if (compact) {
      return NumberFormat.compact(locale: locale).format(number);
    }
    if (decimalPlaces != null) {
      return NumberFormat.decimalPattern(locale)
          .format(double.parse(number.toStringAsFixed(decimalPlaces)));
    }
    return NumberFormat.decimalPattern(locale).format(number);
  }

  String formatPercentage(
    double value, {
    int decimalPlaces = 1,
    String locale = 'en_US',
  }) {
    return NumberFormat.percentPattern(locale).format(value / 100);
  }
}
