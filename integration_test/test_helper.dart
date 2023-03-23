import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/main.dart';
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
}
