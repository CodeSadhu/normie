part of '../normie.dart';

class _Check {
  const _Check();

  bool isEmail(String value) => RegExp(Regex.email).hasMatch(value);

  bool isPhoneNumber(String value, {String? countryCode}) {
    final pattern = countryCode != null
        ? RegExp(r'^\+' + countryCode + r'\s?\d{8,12}$')
        : RegExp(r'^\+?[1-9]\d{1,14}$');
    return pattern.hasMatch(value);
  }

  bool isUrl(String value) => Uri.tryParse(value)?.hasAbsolutePath ?? false;

  bool isStrongPassword(String value) {
    return RegExp(Regex.strongPassword).hasMatch(value);
  }

  bool isCreditCard(String value) {
    // Remove any spaces or dashes
    value = value.replaceAll(RegExp(r'[\s-]'), '');
    if (!RegExp(r'^[0-9]{13,19}$').hasMatch(value)) return false;

    // Luhn Algorithm
    int sum = 0;
    bool alternate = false;
    for (int i = value.length - 1; i >= 0; i--) {
      int n = int.parse(value[i]);
      if (alternate) {
        n *= 2;
        if (n > 9) n -= 9;
      }
      sum += n;
      alternate = !alternate;
    }
    return sum % 10 == 0;
  }

  bool isIPv4(String value) => RegExp(Regex.ipv4).hasMatch(value);

  bool isPostalCode(String value, String countryCode) {
    final patterns = {
      'US': r'^\d{5}(-\d{4})?$',
      'UK': r'^[A-Z]{1,2}\d[A-Z\d]? ?\d[A-Z]{2}$',
      'CA': r'^[ABCEGHJ-NPRSTVXY]\d[ABCEGHJ-NPRSTV-Z] ?\d[ABCEGHJ-NPRSTV-Z]\d$',
    };

    final pattern = patterns[countryCode.toUpperCase()];
    if (pattern == null) return false;

    return RegExp(pattern, caseSensitive: false).hasMatch(value);
  }
}
