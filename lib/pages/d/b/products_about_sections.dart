import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/d/b/_products_about_text.dart';

class const ProductsAboutFirstSection({super.key}) extends OneColumnSection {
  this
    : super(backgroundColor: raumBackground, child: const ProductsAboutText());
}

class const ProductsAboutSecondSection({super.key}) extends OneColumnSection {
  this : super(backgroundImage: Images.productsCandleShell);
}

class const ProductsAboutSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const CoverImageBox(Images.productsCandleShell),
        content: const ProductsAboutText(),
        backgroundColor: raumBackground,
        leftHasMoreFlex: true,
      );
}
