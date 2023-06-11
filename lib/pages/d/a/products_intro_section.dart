import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class ProductsIntroSection extends BaseIntroSection {
  const ProductsIntroSection()
      : super(
          text: data.productsIntroText,
          image: Images.productsIntro,
        );
}
