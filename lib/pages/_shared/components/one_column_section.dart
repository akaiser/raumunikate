import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/base_section.dart';

abstract class OneColumnSection extends StatelessWidget {
  const OneColumnSection({
    this.backgroundImage,
    this.backgroundColor,
    this.child,
  });

  final String? backgroundImage;
  final Color? backgroundColor;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    var _child = child;
    if (_child != null) {
      _child = _ChildPadding(child: _child);
    }

    return BaseSectionWithBackground(
      backgroundImage: backgroundImage,
      backgroundColor: backgroundColor,
      child: _child,
    );
  }
}

class _ChildPadding extends StatelessWidget {
  const _ChildPadding({required this.child});

  final Widget child;

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
    padding:
        context.breakpoint == Breakpoint.xs
            ? _xsChildPadding
            : _defaultChildPadding,
    child: child,
  );
}
