import 'package:flutter/widgets.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  static const path = '/blog';

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
        children: [
          newLine,
          TextLink('#rumfuerunikate: Lilli Grewe', url: Routes.blogLilliGrewe),
        ],
      );
}
