import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class HomeIntroSection extends BaseIntroSection {
  const HomeIntroSection()
      : super(
          text: data.homeIntroText,
          image: Images.homeIntro,
        );
}
