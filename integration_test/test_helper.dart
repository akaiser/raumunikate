import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/main.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/nav_bar/_nav_menu.dart';

extension WidgetTesterExt on WidgetTester {
  Future<void> pumpApp() async {
    await pumpWidget(const App());
    await pumpAndSettle();
  }

  Future<void> navMenuTap() async {
    await tap(find.byKey(navMenuKey));
    await pumpAndSettle();
  }

  Future<void> dragPageView() async {
    await drag(find.byKey(baseSlidePageKey), const Offset(0, -600));
    await pumpAndSettle();
  }

  void expectSectionType(Type type, List<Type> sectionTypes) {
    for (final sectionType in sectionTypes) {
      expect(
        find.byType(sectionType),
        sectionType == type ? findsOneWidget : findsNothing,
      );
    }
  }
}
