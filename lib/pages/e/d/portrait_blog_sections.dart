import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/d/_portrait_blog_text.dart';

class PortraitBlogFirstSection extends OneColumnSection {
  const PortraitBlogFirstSection()
    : super(backgroundImage: Images.waben0, child: const PortraitBlogText());
}

class PortraitBlogSecondSection extends OneColumnSection {
  const PortraitBlogSecondSection()
    : super(backgroundImage: Images.portraitBlog);
}

class PortraitBlogSection extends TwoColumnsSection {
  const PortraitBlogSection()
    : super(
        image: const CoverImageBox(Images.portraitBlog),
        content: const PortraitBlogText(),
        flipWidgets: true,
        backgroundImage: Images.waben0,
      );
}
