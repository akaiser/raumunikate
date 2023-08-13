import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/d/_portrait_blog_text.dart';

class PortraitBlogFirstSection extends OneColumnSection {
  const PortraitBlogFirstSection()
      : super(
          backgroundImage: Images.waben0,
          child: const PortraitBlogText(),
        );
}

class PortraitBlogSecondSection extends OneColumnSection {
  const PortraitBlogSecondSection()
      // TODO(albert): change image
      : super(backgroundImage: Images.portraitAbout);
}

class PortraitBlogSection extends TwoColumnsSection {
  const PortraitBlogSection()
      : super(
          // TODO(albert): change image
          image: const CoverImageBox(Images.portraitAbout),
          content: const PortraitBlogText(),
          flipWidgets: true,
          backgroundImage: Images.waben0,
        );
}
