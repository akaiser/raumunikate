import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/c/_portrait_product_text.dart';

class PortraitProductFirstSection extends OneColumnSection {
  const PortraitProductFirstSection()
    : super(backgroundImage: Images.waben1, child: const PortraitProductText());
}

class PortraitProductSecondSection extends OneColumnSection {
  const PortraitProductSecondSection()
    : super(backgroundImage: Images.portraitProduct);
}

class PortraitProductSection extends TwoColumnsSection {
  const PortraitProductSection()
    : super(
        image: const CoverImageBox(Images.portraitProduct),
        content: const PortraitProductText(),
        backgroundImage: Images.waben1,
      );
}
