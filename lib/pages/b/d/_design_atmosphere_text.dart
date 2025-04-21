import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/b/d/_data.dart' as data;

class DesignAtmosphereText extends FullTextSection {
  const DesignAtmosphereText()
    : super(
        title: data.title,
        title2: data.title2,
        text: data.content,
        textColor: mainBackgroundColor,
      );
}
