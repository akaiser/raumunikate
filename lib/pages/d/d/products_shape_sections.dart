import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/d/d/_products_shape_text.dart';

class ProductsShapeFirstSection extends OneColumnSection {
  const ProductsShapeFirstSection()
      : super(
          backgroundColor: raumLila,
          child: const ProductsShapeText(),
        );
}

class ProductsShapeSecondSection extends OneColumnSection {
  const ProductsShapeSecondSection()
      : super(backgroundImage: Images.productsClockShell);
}

class ProductsShapeSection extends TwoColumnsSection {
  const ProductsShapeSection()
      : super(
          image: const CoverImageBox(Images.productsClockShell),
          content: const ProductsShapeText(),
          leftHasMoreFlex: true,
          flipWidgets: true,
          backgroundColor: raumLila,
        );
}
