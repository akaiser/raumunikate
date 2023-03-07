import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/a/home_page.dart';

import '../test_helper.dart';

void main() {
  testWidgets('shows $HomePage', (tester) async {
    await tester.pumpApp();

    expect(find.byType(HomePage), findsOneWidget);
  });
}
