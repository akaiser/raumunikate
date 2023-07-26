import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';

class PlanColorsSection extends StatelessWidget {
  const PlanColorsSection({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) => Padding(
        padding: EdgeInsets.only(top: context.isFullWidthNavBar ? 32 : 0),
        child: _HorizontalPadding(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: navigationBarHeight),
              ...children,
            ],
          ),
        ),
      );
}

class _HorizontalPadding extends StatelessWidget {
  const _HorizontalPadding({required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) => ResponsiveLayout(
        xl: (_) => Padding(
          padding: textHorizontalPaddingXl,
          child: child,
        ),
        l: (_) => Padding(
          padding: textHorizontalPaddingL,
          child: child,
        ),
        xs: (_) => Padding(
          padding: textHorizontalPaddingXs,
          child: child,
        ),
      );
}
