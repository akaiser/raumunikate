import 'package:raumunikate/pages/_shared/components/full_text_section.dart';
import 'package:raumunikate/pages/f/b/_data.dart' as data;

class InspirationWelcomeText extends FullTextSection {
  const InspirationWelcomeText()
      : super(
          title: data.welcomeTitle,
          title2: data.welcomeTitle2,
          text: data.welcomeContent,
        );
}
