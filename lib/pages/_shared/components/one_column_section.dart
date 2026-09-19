import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/nullable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/base_section.dart';

abstract class const OneColumnSection({
  final String? _backgroundImage,
  final Color? _backgroundColor,
  final Widget? _child,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BaseSectionWithBackground(
    backgroundImage: _backgroundImage,
    backgroundColor: _backgroundColor,
    child: _child.let((it) => _ChildPadding(child: it)),
  );
}

class const _ChildPadding({required final Widget _child})
    extends StatelessWidget {
  static const _xsChildPadding = EdgeInsets.only(
    left: 20,
    top: navigationBarHeight,
    right: 20,
  );

  static const _defaultChildPadding = EdgeInsets.only(
    left: 100,
    top: navigationBarHeight + 60,
    right: 100,
  );

  @override
  Widget build(BuildContext context) => Padding(
    padding: context.breakpoint == .xs ? _xsChildPadding : _defaultChildPadding,
    child: _child,
  );
}
