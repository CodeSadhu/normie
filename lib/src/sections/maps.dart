part of '../normie.dart';

class _Maps {
  const _Maps();

  Map<String, dynamic> deepClone(Map<String, dynamic> source) {
    return json.decode(json.encode(source));
  }

  Map<String, dynamic> merge(
    Map<String, dynamic> map1,
    Map<String, dynamic> map2,
  ) {
    return {...map1, ...map2};
  }

  Map<String, dynamic> flatten(
    Map<String, dynamic> map, {
    String separator = '.',
    String prefix = '',
  }) {
    final result = <String, dynamic>{};

    void visit(
      Map<String, dynamic> map,
      String prefix,
    ) {
      map.forEach((key, value) {
        final newKey = prefix.isEmpty ? key : '$prefix$separator$key';

        if (value is Map<String, dynamic>) {
          visit(value, newKey);
        } else {
          result[newKey] = value;
        }
      });
    }

    visit(map, prefix);
    return result;
  }

  Map<String, dynamic> pick(
    Map<String, dynamic> map,
    List<String> keys,
  ) {
    return Map.fromEntries(
      keys.where(map.containsKey).map((key) => MapEntry(key, map[key])),
    );
  }
}
