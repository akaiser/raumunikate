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

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

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

class _BlogEntry extends StatelessWidget {
  const _BlogEntry(this.entry);

  final BlogDataEntry entry;

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        s: (_) => _RegularEntry(entry),
        xs: (_) => _SmallEntry(entry),
      );
}

class _RegularEntry extends StatelessWidget {
  const _RegularEntry(this.entry);

  final BlogDataEntry entry;

  @override
  Widget build(BuildContext context) => Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 260,
            child: _Image(entry),
          ),
          const Gap(16),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
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

class _SmallEntry extends StatelessWidget {
  const _SmallEntry(this.entry);

  final BlogDataEntry entry;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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

class _Header extends StatelessWidget {
  const _Header(this.entry);

  final BlogDataEntry entry;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: TextLink(entry.title, url: entry.route)),
          Text(entry.date),
        ],
      );
}

class _Image extends StatelessWidget {
  const _Image(this.entry);

  final BlogDataEntry entry;

  @override
  Widget build(BuildContext context) => ClickableRegion(
        onTap: () => context.launch(entry.route),
        child: FadeInAssetImage(entry.image),
      );
}

class _Categories extends StatelessWidget {
  const _Categories(this.categories);

  final Iterable<String> categories;

  @override
  Widget build(BuildContext context) => Wrap(
        runSpacing: 6,
        children: categories
            .map<Widget>(
              (category) => Chip(
                label: Text(category),
                padding: EdgeInsets.zero,
                backgroundColor: mainBackgroundColor,
              ),
            )
            .separate(const Gap(6))
            .unmodifiable,
      );
}
