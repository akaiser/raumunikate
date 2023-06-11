import 'package:raumunikate/pages/base_slide_page.dart';
import 'package:raumunikate/pages/d/a/products_intro_section.dart';

class ProductsPage extends BaseSlidePage {
  const ProductsPage() : super(children: const [ProductsIntroSection()]);

  static const path = '/produkte';
}
