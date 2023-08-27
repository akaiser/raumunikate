import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/d/a/products_intro_section.dart';
import 'package:raumunikate/pages/d/b/products_about_sections.dart';
import 'package:raumunikate/pages/d/c/products_type_slides.dart';
import 'package:raumunikate/pages/d/d/products_shape_sections.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage();

  static const path = '/produkte';

  @override
  Widget build(BuildContext context) {
    final isSxsBreakpoint = context.isSxsBreakpoint;
    return BaseSlidePage(
      children: [
        const ProductsIntroSection(),
        if (isSxsBreakpoint) ...const [
          ProductsAboutFirstSection(),
          ProductsAboutSecondSection(),
        ] else
          const ProductsAboutSection(),
        const ProductsTypeSlides(),
        if (isSxsBreakpoint) ...const [
          ProductsShapeFirstSection(),
          ProductsShapeSecondSection(),
        ] else
          const ProductsShapeSection(),
      ],
    );
  }
}
