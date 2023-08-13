import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/b/d/_data.dart' as data;

class PlanAtmosphereText extends FullTextSection {
  const PlanAtmosphereText()
      : super(
          title: data.atmosphereTitle,
          title2: data.atmosphereTitle2,
          text: data.atmosphereContent,
          textColor: mainBackgroundColor,
        );
}
