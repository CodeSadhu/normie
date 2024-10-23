part of '../normie.dart';

class _Collection {
  const _Collection();

  List<T> removeDuplicates<T>(List<T> list) => list.toSet().toList();

  List<T> shuffle<T>(List<T> list) {
    final copy = List<T>.from(list);
    copy.shuffle();
    return copy;
  }

  List<T> paginate<T>(List<T> list, int page, int pageSize) {
    final startIndex = (page - 1) * pageSize;
    if (startIndex >= list.length) return [];

    final endIndex = math.min(startIndex + pageSize, list.length);
    return list.sublist(startIndex, endIndex);
  }

  Map<K, List<T>> groupBy<T, K>(List<T> list, K Function(T) keyFn) {
    return list.fold<Map<K, List<T>>>(
      {},
      (map, element) {
        final key = keyFn(element);
        map.putIfAbsent(key, () => []).add(element);
        return map;
      },
    );
  }
}
