import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/base_section.dart';

abstract class TwoColumnsSection extends StatelessWidget {
  const TwoColumnsSection({
    required this.image,
    required this.content,
    this.flipWidgets = false,
    this.leftHasMoreFlex = false,
    this.backgroundImage,
    this.backgroundColor,
  });

  final Widget image;
  final Widget content;
  final bool flipWidgets;
  final bool leftHasMoreFlex;
  final String? backgroundImage;
  final Color? backgroundColor;

  static const _xlContentPadding = EdgeInsets.only(
    left: 100,
    top: navigationBarHeight + 100,
    right: 100,
  );

  static const _mContentPadding = EdgeInsets.only(
    left: 60,
    top: navigationBarHeight + 100,
    right: 60,
  );

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        xl: (_) => _TwoColumn(
          image,
          content,
          flipWidgets,
          leftHasMoreFlex,
          _xlContentPadding,
          backgroundImage,
          backgroundColor,
        ),
        m: (_) => _TwoColumn(
          image,
          content,
          flipWidgets,
          leftHasMoreFlex,
          _mContentPadding,
          backgroundImage,
          backgroundColor,
        ),
      );
}

class _TwoColumn extends StatelessWidget {
  const _TwoColumn(
    this.image,
    this.content,
    // ignore: avoid_positional_boolean_parameters
    this.flipWidgets,
    this.leftHasMoreFlex,
    this.contentPadding,
    this.backgroundImage,
    this.backgroundColor,
  );

  final Widget image;
  final Widget content;
  final bool flipWidgets;
  final bool leftHasMoreFlex;
  final EdgeInsetsGeometry contentPadding;
  final String? backgroundImage;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    final _image = Flexible(
      flex: leftHasMoreFlex ? 3 : 2,
      child: SizedBox.expand(child: image),
    );
    final _content = Flexible(
      flex: leftHasMoreFlex ? 2 : 3,
      child: Padding(padding: contentPadding, child: content),
    );

    return BaseSectionWithBackground(
      backgroundImage: backgroundImage,
      backgroundColor: backgroundColor,
      child: Row(
        children: [
          if (flipWidgets) _content else _image,
          if (flipWidgets) _image else _content,
        ],
      ),
    );
  }
}
