import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';
import 'package:raumunikate/pages/base_scroll_page.dart';
import 'package:raumunikate/pages/f/_data.dart';

class const BlogPage({super.key}) extends StatelessWidget {
  static const path = '/blog';

  @override
  Widget build(BuildContext context) => BaseScrollPage(
    children: [
      newLine,
      ...blogDataEntries
          .map<Widget>(_BlogEntry.new)
          .separate(newLine)
          .unmodifiable
          .reversed,
    ],
  );
}

class const _BlogEntry(final BlogDataEntry entry) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveLayout(
    s: (_) => _RegularEntry(entry),
    xs: (_) => _SmallEntry(entry),
  );
}

class const _RegularEntry(final BlogDataEntry entry) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: .start,
    children: [
      SizedBox(width: 260, child: _Image(entry)),
      const Gap(16),
      Flexible(
        child: Column(
          crossAxisAlignment: .end,
          children: [
            _Header(entry),
            Text(entry.description),
            newLine,
            _Categories(entry.categories),
          ],
        ),
      ),
    ],
  );
}

class const _SmallEntry(final BlogDataEntry entry) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Column(
    crossAxisAlignment: .start,
    children: [
      _Header(entry),
      smallNewLine,
      _Image(entry),
      smallNewLine,
      Text(entry.description),
      smallNewLine,
      _Categories(entry.categories),
    ],
  );
}

class const _Header(final BlogDataEntry entry) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: .spaceBetween,
    crossAxisAlignment: .start,
    children: [
      Expanded(child: TextLink(entry.title, url: entry.route)),
      Text(entry.date),
    ],
  );
}

class const _Image(final BlogDataEntry entry) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ClickableRegion(
    onTap: () => context.launch(entry.route),
    child: FadeInAssetImage(entry.image),
  );
}

class const _Categories(final Iterable<String> categories)
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Wrap(
    runSpacing: 6,
    children: categories
        .map<Widget>(
          (category) => Chip(
            label: Text(category),
            padding: .zero,
            backgroundColor: mainBackgroundColor,
          ),
        )
        .separate(const Gap(6))
        .unmodifiable,
  );
}
