import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

const _imgSeparator = Gap(24);

class const ResponsiveBlogImages(
  final Iterable<String> images, {
  final bool flexRow = false,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveLayout(
    m: (_) => flexRow ? _FlexRow(images) : _ExpandedRow(images),
    xs: (_) => _Column(images),
  );
}

class const _ExpandedRow(final Iterable<String> images)
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Row(
    children: images.separated(
      (image) => Expanded(child: FadeInAssetImage(image)),
    ),
  );
}

class const _FlexRow(final Iterable<String> images) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Table(
    columnWidths: const {
      1: FixedColumnWidth(24),
      2: FlexColumnWidth(1.5),
      3: FixedColumnWidth(24),
    },
    children: [TableRow(children: images.separated(FadeInAssetImage.new))],
  );
}

class const _Column(final Iterable<String> images) extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Column(children: images.separated(FadeInAssetImage.new));
}

extension on Iterable<String> {
  List<Widget> separated(Widget Function(String image) mapper) =>
      map<Widget>((image) => mapper(image))
          .separate(_imgSeparator)
          .unmodifiable;
}
