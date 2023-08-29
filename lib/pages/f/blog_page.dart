import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
import 'package:raumunikate/pages/f/_data.dart';

class BlogPage extends BaseScrollPage {
  const BlogPage()
      : super(
          children: const [
            newLine,
            TextLink(blogNameLilliGrewe, url: Routes.blogLilliGrewe),
            smallNewLine,
            TextLink(blogNameKerstinDiehl, url: Routes.blogKerstinDiehl),
          ],
        );

  static const path = '/blog';
}
