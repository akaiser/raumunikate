import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/d/b/_products_about_text.dart';

class ProductsAboutFirstSection extends OneColumnSection {
  const ProductsAboutFirstSection()
      : super(
          backgroundColor: raumBackground,
          child: const ProductsAboutText(),
        );
}

class ProductsAboutSecondSection extends OneColumnSection {
  const ProductsAboutSecondSection()
      : super(backgroundImage: Images.productsCandleShell);
}

class ProductsAboutSection extends TwoColumnsSection {
  const ProductsAboutSection()
      : super(
          image: const CoverImageBox(Images.productsCandleShell),
          content: const ProductsAboutText(),
          backgroundColor: raumBackground,
          leftHasMoreFlex: true,
        );
}
