import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/main.dart';

extension WidgetTesterEx on WidgetTester {
  Future<void> pumpApp() async {
    await pumpWidget(const App());
    await pumpAndSettle();
  }
}
