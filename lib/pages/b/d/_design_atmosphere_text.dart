import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/b/d/_data.dart' as data;

final class const DesignAtmosphereText({super.key}) extends FullTextSection {
  this
    : super(
        data.content,
        title: data.title,
        title2: data.title2,
        textColor: mainBackgroundColor,
      );
}
