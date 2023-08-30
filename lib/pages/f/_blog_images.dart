import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/fade_in_asset_image.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

const _imgSeparator = SizedBox(width: 24, height: 24);

class ResponsiveBlogImages extends StatelessWidget {
  const ResponsiveBlogImages(
    this.images, {
    this.flexRow = false,
  });

  final List<String> images;
  final bool flexRow;

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        m: (_) => flexRow ? _FlexRow(images) : _ExpandedRow(images),
        xs: (_) => Column(
          children: images
              .map<Widget>(FadeInAssetImage.new)
              .separate(_imgSeparator)
              .unmodifiable,
        ),
      );
}

class _ExpandedRow extends StatelessWidget {
  const _ExpandedRow(this.images);

  final List<String> images;

  @override
  Widget build(BuildContext context) => Row(
        children: images
            .map<Widget>((image) => Expanded(child: FadeInAssetImage(image)))
            .separate(_imgSeparator)
            .unmodifiable,
      );
}

class _FlexRow extends StatelessWidget {
  const _FlexRow(this.images);

  final List<String> images;

  @override
  Widget build(BuildContext context) => Table(
        columnWidths: const {1: FlexColumnWidth(1.5)},
        children: [
          TableRow(children: images.map(FadeInAssetImage.new).unmodifiable),
        ],
      );
}
