import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/a/b/_home_welcome_text.dart';

class HomeWelcomeFirstSection extends OneColumnSection {
  const HomeWelcomeFirstSection()
      : super(
          backgroundColor: raumBackground,
          child: const HomeWelcomeText(),
        );
}

class HomeWelcomeSecondSection extends OneColumnSection {
  const HomeWelcomeSecondSection()
      : super(backgroundImage: Images.homeWelcomeIna);
}

class HomeWelcomeSection extends TwoColumnsSection {
  const HomeWelcomeSection()
      : super(
          image: const CoverImageBox(Images.homeWelcomeIna),
          content: const HomeWelcomeText(),
          backgroundColor: raumBackground,
        );
}
