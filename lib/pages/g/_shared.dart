import 'package:flutter/widgets.dart';
import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class BlogHeader extends StatelessWidget {
  const BlogHeader({
    required this.blogName,
    required this.blogDate,
  });

  final String blogName;
  final String blogDate;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const TextLink('Blog', url: Routes.blogPage),
          const Text(' > '),
          Expanded(
            child: Text(blogName),
          ),
          const SizedBox(width: 4),
          Text(blogDate),
        ],
      );
}

class BlogImageRow extends StatelessWidget {
  const BlogImageRow(this.images);

  final List<String> images;

  static const _imgSeparator = SizedBox(width: 24, height: 24);

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        m: (_) => Row(
          children: images
              .map<Widget>((image) => Expanded(child: Image.asset(image)))
              .separate(_imgSeparator)
              .unmodifiable,
        ),
        xs: (_) => Column(
          children: images
              .map<Widget>(Image.asset)
              .separate(_imgSeparator)
              .unmodifiable,
        ),
      );
}

class BlogCaption extends StatelessWidget {
  const BlogCaption(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: context.tt.label?.copyWith(fontWeight: FontWeight.bold),
      );
}
