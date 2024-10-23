part of '../normie.dart';

class _Device {
  const _Device();

  bool get isWeb => identical(0, 0.0);

  bool get isMobile => !isWeb && (Platform.isIOS || Platform.isAndroid);

  bool get isDesktop =>
      !isWeb && (Platform.isWindows || Platform.isLinux || Platform.isMacOS);

  String get platformName {
    if (isWeb) return 'web';
    if (Platform.isAndroid) return 'android';
    if (Platform.isIOS) return 'ios';
    if (Platform.isWindows) return 'windows';
    if (Platform.isMacOS) return 'macos';
    if (Platform.isLinux) return 'linux';
    return 'unknown';
  }
}
