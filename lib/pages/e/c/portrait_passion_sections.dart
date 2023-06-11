import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/c/_portrait_passion_text.dart';

class PortraitPassionFirstSection extends OneColumnSection {
  const PortraitPassionFirstSection({
    super.backgroundImage = Images.waben1,
    super.child = const PortraitPassionText(),
  });
}

class PortraitPassionSecondSection extends OneColumnSection {
  const PortraitPassionSecondSection({
    super.backgroundImage = Images.portraitPassion,
  });
}

class PortraitPassionSection extends TwoColumnsSection {
  const PortraitPassionSection({
    super.image = const CoverImageBox(Images.portraitPassion),
    super.content = const PortraitPassionText(),
    super.flipWidgets = false,
    super.backgroundImage = Images.waben1,
  });
}
