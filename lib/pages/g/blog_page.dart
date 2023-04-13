import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
import 'package:raumunikate/pages/g/blog_view_page.dart';

const _blogViewPagePathPrefix = '${BlogPage.path}/${BlogViewPage.path}';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  static const path = '/blog';

  @override
  Widget build(BuildContext context) => BaseScrollPage(
        children: [
          GestureDetector(
            onTap: () => context.go('$_blogViewPagePathPrefix/test-blog-name'),
            child: const ColoredBox(
              color: Colors.red,
              child: Text('Middle'),
            ),
          ),
        ],
      );
}
