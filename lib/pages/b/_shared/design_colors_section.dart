import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/gap.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class const DesignColorsSection({
  required final List<Widget> _children,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Padding(
    padding: .only(top: context.isFullWidthNavBar ? 32 : 0),
    child: _HorizontalPadding(
      child: Column(
        crossAxisAlignment: .start,
        children: [const Gap(navigationBarHeight), ..._children],
      ),
    ),
  );
}

class const _HorizontalPadding({required final Widget _child})
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ResponsiveLayout(
    xl: (_) => Padding(padding: textHorizontalPaddingXl, child: _child),
    l: (_) => Padding(padding: textHorizontalPaddingL, child: _child),
    xs: (_) => Padding(padding: textHorizontalPaddingXs, child: _child),
  );
}
