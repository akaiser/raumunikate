import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_data.dart' as data;
import 'package:raumunikate/pages/base_intro_section.dart';

class InspirationIntroSection extends BaseIntroSection {
  const InspirationIntroSection()
      : super(
          text: data.inspirationIntroText,
          image: Images.inspirationIntro,
        );
}
