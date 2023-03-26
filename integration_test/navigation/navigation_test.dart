import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/a/home_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';
import 'package:raumunikate/pages/nav_bar/_logo.dart';

import '../test_helper.dart';

void main() {
  for (final entry in navData) {
    testWidgets('shows ${entry.pageType}', (tester) async {
      await tester.pumpApp();

      await tester.navMenuTap();
      await tester.tap(find.text(entry.menuLinkText));
      await tester.pumpAndSettle();

      expect(find.byType(entry.pageType), findsOneWidget);
    });
  }

  testWidgets('goes back to $HomePage on $Logo tap', (tester) async {
    await tester.pumpApp();

    await tester.tap(find.byType(Logo));
    await tester.pumpAndSettle();

    expect(find.byType(HomePage), findsOneWidget);
  });
}
