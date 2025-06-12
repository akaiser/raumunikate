import 'package:flutter_test/flutter_test.dart';
import 'package:raumunikate/pages/_footer/footer.dart';
import 'package:raumunikate/pages/d/a/products_intro_section.dart';
import 'package:raumunikate/pages/d/b/products_about_sections.dart';
import 'package:raumunikate/pages/d/c/products_type_slides.dart';
import 'package:raumunikate/pages/d/d/products_shape_sections.dart';
import 'package:raumunikate/pages/d/e/products_citation_section.dart';
import 'package:raumunikate/pages/d/products_page.dart';
import 'package:raumunikate/pages/nav_bar/_data.dart';

import '../test_helper.dart';

const _sectionTypes = <Type>{
  ProductsIntroSection,
  ProductsAboutSection,
  ProductsTypeSlides,
  ProductsShapeSection,
  ProductsCitationSection,
  Footer,
};

void main() {
  testWidgets('ensures to be on $ProductsPage', (tester) async {
    final entry = navData[3];
    await tester.pumpApp();

    await tester.navMenuTap();
    await tester.tap(find.text(entry.menuLinkText));
    await tester.pumpAndSettle();

    expect(find.byType(ProductsPage), findsOneWidget);
  });

  testWidgets('cycles through all sections of $ProductsPage', (tester) async {
    await tester.pumpApp();

    for (final sectionType in _sectionTypes) {
      if (_sectionTypes.first != sectionType) {
        await tester.dragPageView();
      }
      tester.expectType(sectionType, _sectionTypes);
    }
  });
}
