import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/g/_data.dart';
import 'package:raumunikate/pages/g/_shared.dart';
import 'package:raumunikate/pages/g/a/raumfuerunikate_lilli_grewe.dart';
import 'package:raumunikate/pages/g/blog_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _blogs = {
  blogLilliGreweName: RaumfuerunikateLilliGrewe,
};

void main() {
  testWidgets('ensures to be on $BlogPage', (tester) async {
    final entry = navData[6];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(BlogPage), findsOneWidget);
  });

  _blogs.forEach((blogName, pageType) {
    testWidgets('tap on "$blogName" shows "$pageType', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.text(blogName));
      await tester.pumpAndSettle();

      expect(find.byType(pageType), findsOneWidget);
    });

    testWidgets('tap on $blogTextLinkKey leaves "$pageType', (tester) async {
      await tester.pumpApp();

      await tester.tap(find.byKey(blogTextLinkKey));
      await tester.pumpAndSettle();

      expect(find.byType(pageType), findsNothing);
      expect(find.byType(BlogPage), findsOneWidget);
    });
  });
}
