import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

const _imgSeparator = Gap(24);

class ResponsiveBlogImages extends StatelessWidget {
  const ResponsiveBlogImages(
    this.images, {
    this.flexRow = false,
  });

  final Iterable<String> images;
  final bool flexRow;

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        m: (_) => flexRow ? _FlexRow(images) : _ExpandedRow(images),
        xs: (_) => _Column(images),
      );
}

class _ExpandedRow extends StatelessWidget {
  const _ExpandedRow(this.images);

  final Iterable<String> images;

  @override
  Widget build(BuildContext context) => Row(
        children: images.separated(
          (image) => Expanded(child: FadeInAssetImage(image)),
        ),
      );
}

class _FlexRow extends StatelessWidget {
  const _FlexRow(this.images);

  final Iterable<String> images;

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

class _Column extends StatelessWidget {
  const _Column(this.images);

  final Iterable<String> images;

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
