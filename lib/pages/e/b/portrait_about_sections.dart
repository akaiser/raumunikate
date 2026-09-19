import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/b/_portrait_about_text.dart';

class const PortraitAboutFirstSection({super.key}) extends OneColumnSection {
  this
    : super(backgroundColor: raumBackground, child: const PortraitAboutText());
}

class const PortraitAboutSecondSection({super.key}) extends OneColumnSection {
  this : super(backgroundImage: Images.portraitAbout);
}

class const PortraitAboutSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const CoverImageBox(Images.portraitAbout),
        content: const PortraitAboutText(),
        flipWidgets: true,
        backgroundColor: raumBackground,
      );
}
