import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/pages/_legal/_shared.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
import 'package:raumunikate/pages/g/blog_view_page.dart';

const _blogViewPagePathPrefix = '${BlogPage.path}/${BlogViewPage.path}';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  static const path = '/blog';

  @override
  Widget build(BuildContext context) => const BaseScrollPage(
        children: [
          newLine,
          TextLink(
            '#rumfuerunikate: Lilli Grewe',
            url: '$_blogViewPagePathPrefix/raumfuerunikate-lilli-grewe',
          ),
        ],
      );
}
