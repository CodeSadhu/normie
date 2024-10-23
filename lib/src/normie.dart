import 'dart:io';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:convert';
import 'package:normie/utils/regex.dart';
import 'dart:math' as math;

part './sections/cache.dart';
part 'sections/palette.dart';
part 'sections/chrono.dart';
part './sections/device.dart';
part './sections/files.dart';
part './sections/guard.dart';
part 'sections/collection.dart';
part 'sections/maps.dart';
part './sections/maths.dart';
part 'sections/numeric.dart';
part 'sections/check.dart';
part 'sections/words.dart';

class Normie {
  Normie._();

  static const cache = _Cache();
  static const check = _Check();
  static const chrono = _Chrono();
  static const collection = _Collection();
  static const device = _Device();
  static const files = _Files();
  static const guard = _Guard();
  static const maps = _Maps();
  static const maths = _Maths();
  static const numeric = _Numeric();
  static const palette = _Palette();
  static const words = _Words();
}
