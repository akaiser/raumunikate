import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';

void main() {
  group('unmodifiable', () {
    test('creates list', () {
      final Iterable<int> iterable = [1, 2, 3];

      final tested = iterable.unmodifiable;

      expect(tested, isA<List<int>>());
    });

    test('equals', () {
      final Iterable<int> iterable = [1, 2, 3];

      final tested = iterable.unmodifiable;

      expect(tested, equals(iterable));
    });

    test('is not same', () {
      final Iterable<int> iterable = [1, 2, 3];

      final tested = iterable.unmodifiable;

      expect(tested, isNot(same(iterable)));
    });

    test('throws on modification', () {
      final tested = [1, 2, 3].unmodifiable;

      expect(() => tested[0] = 42, throwsUnsupportedError);
    });
  });

  group('separate', () {
    test('adds nothing if the list is empty', () {
      expect(const <int>[].separate(1), const <int>[]);
    });

    test('adds nothing if the list has only one element', () {
      expect(const [0].separate(1), const [0]);
    });

    test('adds separator between two items', () {
      expect(const [0, 0].separate(1), const [0, 1, 0]);
    });

    test('adds separator between three items', () {
      expect(const [0, 0, 0].separate(1), const [0, 1, 0, 1, 0]);
    });
  });

  group('append', () {
    test('appends appender to each element', () {
      expect(const [0, 0].append(1), const [0, 1, 0, 1]);
    });

    test('appends appender even to an empty list', () {
      expect(const <int>[].append(1), const [1]);
    });
  });

  group('mapIndexed', () {
    test('properly maps index and element', () {
      expect(
        Map.fromEntries(const [3, 4, 5].mapIndexed(MapEntry.new)),
        const {0: 3, 1: 4, 2: 5},
      );
    });
  });

  group('groupBy', () {
    test('properly groups', () {
      expect(
        const [0, 1, 2, 3, 4, 5].groupBy((e) => e.isEven),
        {
          true: [0, 2, 4],
          false: [1, 3, 5],
        },
      );
    });
  });

  group('whereNotNull', () {
    test('removes nulls', () {
      expect(
        const [0, 1, null, null, 4, 5].whereNotNull(),
        const [0, 1, 4, 6],
      );
    });
  });
}
