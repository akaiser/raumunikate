import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/f/b/_inspiration_welcome_text.dart';

class InspirationWelcomeFirstSection extends OneColumnSection {
  const InspirationWelcomeFirstSection()
      : super(
          backgroundColor: mainTODO_5,
          child: const InspirationWelcomeText(),
        );
}

class InspirationWelcomeSecondSection extends OneColumnSection {
  const InspirationWelcomeSecondSection()
      : super(backgroundImage: Images.inspirationWelcome);
}

class InspirationWelcomeSection extends TwoColumnsSection {
  const InspirationWelcomeSection()
      : super(
          image: const CoverImageBox(Images.inspirationWelcome),
          content: const InspirationWelcomeText(),
          leftHasMoreFlex: true,
          backgroundColor: mainTODO_5,
        );
}
