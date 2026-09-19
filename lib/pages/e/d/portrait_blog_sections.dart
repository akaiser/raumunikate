import 'package:raumunikate/_images.dart';
import 'package:raumunikate/pages/_shared/components/one_column_section.dart';
import 'package:raumunikate/pages/_shared/components/two_columns_section.dart';
import 'package:raumunikate/pages/_shared/ui/cover_image_box.dart';
import 'package:raumunikate/pages/e/d/_portrait_blog_text.dart';

class const PortraitBlogFirstSection({super.key}) extends OneColumnSection {
  this : super(backgroundImage: Images.waben0, child: const PortraitBlogText());
}

class const PortraitBlogSecondSection({super.key}) extends OneColumnSection {
  this : super(backgroundImage: Images.portraitBlog);
}

class const PortraitBlogSection({super.key}) extends TwoColumnsSection {
  this
    : super(
        image: const CoverImageBox(Images.portraitBlog),
        content: const PortraitBlogText(),
        flipWidgets: true,
        backgroundImage: Images.waben0,
      );
}
