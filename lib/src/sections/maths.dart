part of '../normie.dart';

class _Maths {
  const _Maths();

  double rotate(num angle) => angle * math.pi / 180;

  double roundTo(double number, int places) {
    final mod = math.pow(10.0, places);
    return (number * mod).round() / mod;
  }

  double lerp(double start, double end, double progress) {
    return start + (end - start) * progress.clamp(0.0, 1.0);
  }

  bool approximately(double a, double b, [double epsilon = 0.0001]) {
    return (a - b).abs() < epsilon;
  }

  int clamp(int value, int min, int max) {
    if (value < min) return min;
    if (value > max) return max;
    return value;
  }
}
