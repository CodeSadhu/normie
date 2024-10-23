part of '../normie.dart';

class _Cache {
  const _Cache();

  static final Map<String, _CacheEntry> _storage = {};

  void set(String key, dynamic value, {Duration? expiry}) {
    _storage[key] = _CacheEntry(
      value: value,
      expiry: expiry != null ? DateTime.now().add(expiry) : null,
    );
  }

  T? get<T>(String key) {
    final entry = _storage[key];
    if (entry == null) return null;

    if (entry.expiry != null && entry.expiry!.isBefore(DateTime.now())) {
      _storage.remove(key);
      return null;
    }

    return entry.value as T?;
  }

  void remove(String key) => _storage.remove(key);

  void clear() => _storage.clear();

  bool has(String key) => _storage.containsKey(key);

  int get size => _storage.length;

  List<String> get keys => _storage.keys.toList();

  void removeExpired() {
    final now = DateTime.now();
    _storage.removeWhere(
        (_, entry) => entry.expiry != null && entry.expiry!.isBefore(now));
  }
}

class _CacheEntry {
  final dynamic value;
  final DateTime? expiry;

  const _CacheEntry({required this.value, this.expiry});
}
