part of '../normie.dart';

class _Palette {
  const _Palette();

  Color hexToColor(String code) {
    final buffer = StringBuffer();
    if (code.length == 6 || code.length == 7) buffer.write('ff');
    buffer.write(code.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }

  String colorToHex(Color color) {
    return color.value
        .toRadixString(16)
        .substring(2, color.value.toRadixString(16).length);
  }

  Color randomColor() {
    return Colors.primaries[math.Random().nextInt(Colors.primaries.length)];
  }

  Color lighten(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final lightness = (hsl.lightness + amount).clamp(0.0, 1.0);

    return hsl.withLightness(lightness).toColor();
  }

  Color darken(Color color, [double amount = .1]) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(color);
    final lightness = (hsl.lightness - amount).clamp(0.0, 1.0);

    return hsl.withLightness(lightness).toColor();
  }

  bool isLight(Color color) {
    return color.computeLuminance() > 0.5;
  }
}
