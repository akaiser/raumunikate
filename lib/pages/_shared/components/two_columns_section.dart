import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/base_section.dart';

class const TwoColumnsSection({
  required final Widget _image,
  required final Widget _content,
  final bool _flipWidgets = false,
  final bool _leftHasMoreFlex = false,
  final String? _backgroundImage,
  final Color? _backgroundColor,
  super.key,
}) extends StatelessWidget {
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
      _image,
      _content,
      _flipWidgets,
      _leftHasMoreFlex,
      _xlContentPadding,
      _backgroundImage,
      _backgroundColor,
    ),
    m: (_) => _TwoColumn(
      _image,
      _content,
      _flipWidgets,
      _leftHasMoreFlex,
      _mContentPadding,
      _backgroundImage,
      _backgroundColor,
    ),
  );
}

class const _TwoColumn(
  final Widget _image,
  final Widget _content,
  // ignore: avoid_positional_boolean_parameters
  final bool _flipWidgets,
  final bool _leftHasMoreFlex,
  final EdgeInsetsGeometry _contentPadding,
  final String? _backgroundImage,
  final Color? _backgroundColor,
) extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final image = Flexible(
      flex: _leftHasMoreFlex ? 3 : 2,
      child: SizedBox.expand(child: _image),
    );
    final content = Flexible(
      flex: _leftHasMoreFlex ? 2 : 3,
      child: Padding(padding: _contentPadding, child: _content),
    );

    return BaseSectionWithBackground(
      backgroundImage: _backgroundImage,
      backgroundColor: _backgroundColor,
      child: Row(
        children: [
          if (_flipWidgets) content else image,
          if (_flipWidgets) image else content,
        ],
      ),
    );
  }
}
