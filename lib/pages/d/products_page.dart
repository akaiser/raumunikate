import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/base_page.dart';
import 'package:raumunikate/pages/d/a/products_intro_section.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  static const path = '/produkte';

  @override
  Widget build(BuildContext context) => const BasePage(
        children: [
          ProductsIntroSection(),
        ],
      );
}
