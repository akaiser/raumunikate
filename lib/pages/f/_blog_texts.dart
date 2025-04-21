import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

const blogTextLinkKey = Key('blog-text-link');

class BlogHeader extends StatelessWidget {
  const BlogHeader({required this.blogName, required this.blogDate});

  final String blogName;
  final String blogDate;

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const TextLink('Blog', url: Routes.blogPage, key: blogTextLinkKey),
      const Text(' > '),
      Expanded(child: Text(blogName)),
      const Gap(4),
      Text(blogDate),
    ],
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

class InlineTextRaumunikate extends InlineText {
  const InlineTextRaumunikate()
    : super('@raumunikate', link: 'https://www.instagram.com/raumunikate/');
}

class InlineTextRaumfuerunikate extends InlineText {
  const InlineTextRaumfuerunikate()
    : super(
        '#raumfuerunikate',
        link: 'https://www.instagram.com/explore/tags/raumfuerunikate/',
      );
}
