import 'package:flutter_test/flutter_test.dart' as ft show WidgetTester, find;
import 'package:material_ui/material_ui.dart';

extension WidgetTesterEx on ft.WidgetTester {
  Future<void> render(Widget widget) => pumpWidget(
    MaterialApp(
      home: Directionality(textDirection: TextDirection.ltr, child: widget),
    ),
  );

  T find<T extends Widget>() => widget<T>(ft.find.byType(T));
}
