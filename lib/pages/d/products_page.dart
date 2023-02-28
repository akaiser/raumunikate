import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/base_footer_page.dart';
import 'package:raumunikate/pages/d/a/products_intro_section.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static const path = '/products';

  @override
  Widget build(BuildContext context) => const BaseFooterPage(
        children: [
          ProductsIntroSection(),
        ],
      );
}
