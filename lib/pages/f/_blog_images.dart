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
        xs: (_) => Column(children: images.doMap(FadeInAssetImage.new)),
      );
}

class _ExpandedRow extends StatelessWidget {
  const _ExpandedRow(this.images);

  final List<String> images;

  @override
  Widget build(BuildContext context) => Row(
        children: images.doMap(
          (image) => Expanded(child: FadeInAssetImage(image)),
        ),
      );
}

class _FlexRow extends StatelessWidget {
  const _FlexRow(this.images);

  final List<String> images;

  @override
  Widget build(BuildContext context) => Table(
        columnWidths: const {
          1: FixedColumnWidth(24),
          2: FlexColumnWidth(1.5),
          3: FixedColumnWidth(24),
        },
        children: [TableRow(children: images.doMap(FadeInAssetImage.new))],
      );
}

extension on Iterable<String> {
  List<Widget> doMap(Widget Function(String image) mapper) =>
      map<Widget>((image) => mapper(image))
          .separate(_imgSeparator)
          .unmodifiable;
}
