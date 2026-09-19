import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/c/_portrait_product_text.dart';

class const PortraitProductFirstSection({super.key}) extends OneColumnSection {
  this
    : super(backgroundImage: Images.waben1, child: const PortraitProductText());
}

class const PortraitProductSecondSection({super.key}) extends OneColumnSection {
  this : super(backgroundImage: Images.portraitProduct);
}

class const PortraitProductSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const CoverImageBox(Images.portraitProduct),
        content: const PortraitProductText(),
        backgroundImage: Images.waben1,
      );
}
