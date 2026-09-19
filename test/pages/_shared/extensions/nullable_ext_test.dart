import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_shared/extensions/nullable_ext.dart';

void main() {
  group('let', () {
    test('when null then return null', () {
      const int? tested = null;

      final result = tested.let((self) => 1);

      expect(result, isNull);
    });

    test('when is not null apply the matcher', () {
      // ignore: unnecessary_nullable_for_final_variable_declarations
      const int? tested = 1;

      final result = tested.let((self) => '$self');

      expect(result, '1');
    });
  });
}
