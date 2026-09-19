import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/a/b/_home_welcome_text.dart';

class const HomeWelcomeFirstSection({super.key}) extends OneColumnSection {
  this : super(backgroundColor: raumBackground, child: const HomeWelcomeText());
}

class const HomeWelcomeSecondSection({super.key}) extends OneColumnSection {
  this : super(backgroundImage: Images.homeWelcomeIna);
}

class const HomeWelcomeSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const CoverImageBox(Images.homeWelcomeIna),
        content: const HomeWelcomeText(),
        backgroundColor: raumBackground,
      );
}
