import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/b/f/_data.dart' as data;

class PlanStyleText extends FullTextSection {
  const PlanStyleText()
      : super(
          title: data.styleTitle,
          title2: data.styleTitle2,
          text: data.styleContent,
          textColor: mainBackgroundColor,
        );
}
