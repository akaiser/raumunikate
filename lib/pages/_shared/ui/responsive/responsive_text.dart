import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(
    this.text, {
    required this.fontSizes,
    required this.style,
    this.textAlign = TextAlign.center,
    super.key,
  }) : assert(fontSizes.length == 6, 'one needs to provide six font sizes');

  final String text;

  // xxl | xl | l | m | s | xs
  final List<double> fontSizes;
  final TextStyle? style;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) => Text(
        text,
        textAlign: textAlign,
        style: style?.copyWith(fontSize: _resolveFontSize(context)),
      );

  double _resolveFontSize(BuildContext context) {
    switch (context.breakpoint) {
      case Breakpoint.xxl:
        return fontSizes[0];
      case Breakpoint.xl:
        return fontSizes[1];
      case Breakpoint.l:
        return fontSizes[2];
      case Breakpoint.m:
        return fontSizes[3];
      case Breakpoint.s:
        return fontSizes[4];
      case Breakpoint.xs:
        return fontSizes[5];
    }
  }
}
