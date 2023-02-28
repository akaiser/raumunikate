extension IterableEx<T> on Iterable<T> {
  List<T> get unmodifiable => List.unmodifiable(this);

  Iterable<T> separate(T by) {
    if (length < 2) return this;
    final separated = _expand(by);
    return separated.take(separated.length - 1);
  }

  Iterable<T> append(T by) => isEmpty ? [by] : _expand(by);

  Iterable<T> _expand(T by) => expand((it) => [it, by]);

  Iterable<R> mapIndexed<R>(R Function(int index, T element) mapper) sync* {
    var i = 0;
    for (final value in this) {
      yield mapper(i++, value);
    }
  }

  Map<G, Iterable<T>> groupBy<G>(G Function(T) key) {
    final map = <G, List<T>>{};
    for (final it in this) {
      (map[key(it)] ??= []).add(it);
    }
    return map;
  }

  Iterable<T> sort([int Function(T a, T b)? compare]) =>
      toList()..sort(compare);
}

extension IterableNullableEx<T> on Iterable<T?> {
  Iterable<T> whereNotNull() sync* {
    for (final element in this) {
      if (element != null) yield element;
    }
  }
}
