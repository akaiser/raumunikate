import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/b/f/_data.dart' as data;

class const DesignStyleText({super.key}) extends FullTextSection {
  this
    : super(
        data.content,
        title: data.title,
        title2: data.title2,
        textColor: mainBackgroundColor,
      );
}
