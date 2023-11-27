import 'package:flutter/foundation.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/main.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
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

  void expectType(Type type, Iterable<Type> types) {
    for (final _type in types) {
      expect(
        find.byType(_type),
        _type == type ? findsOneWidget : findsNothing,
      );
    }
  }

  Future<void> dragPageView() => _drag(baseSlidePageKey);

  Future<void> dragScrollView() => _drag(baseScrollPageKey);

  Future<void> _drag(Key key) async {
    await drag(find.byKey(key), const Offset(0, -600));
    await pumpAndSettle();
  }
}
