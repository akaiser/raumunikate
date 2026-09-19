import 'package:raumunikate/_routes.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/rich_text_section.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

const blogTextLinkKey = Key('blog-text-link');

class const BlogHeader({
  required final String blogName,
  required final String blogDate,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: .start,
    children: [
      const TextLink('Blog', url: Routes.blogPage, key: blogTextLinkKey),
      const Text(' > '),
      Expanded(child: Text(blogName)),
      const Gap(4),
      Text(blogDate),
    ],
  );
}

class const BlogCaption(final String text, {super.key})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Text(text, style: context.tt.label?.copyWith(fontWeight: .bold));
}

class const InlineTextRaumunikate() extends InlineText {
  this : super('@raumunikate', link: 'https://www.instagram.com/raumunikate/');
}

class const InlineTextRaumfuerunikate() extends InlineText {
  this
    : super(
        '#raumfuerunikate',
        link: 'https://www.instagram.com/explore/tags/raumfuerunikate/',
      );
}
