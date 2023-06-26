import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/c/_portrait_passion_text.dart';

class PortraitPassionFirstSection extends OneColumnSection {
  const PortraitPassionFirstSection()
      : super(
          backgroundImage: Images.waben1,
          child: const PortraitPassionText(),
        );
}

class PortraitPassionSecondSection extends OneColumnSection {
  const PortraitPassionSecondSection()
      : super(backgroundImage: Images.portraitPassion);
}

class PortraitPassionSection extends TwoColumnsSection {
  const PortraitPassionSection()
      : super(
          image: const CoverImageBox(Images.portraitPassion),
          content: const PortraitPassionText(),
          flipWidgets: false,
          backgroundImage: Images.waben1,
        );
}
