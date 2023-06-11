import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class ResponsiveText extends StatelessWidget {
  const ResponsiveText(
    this.text, {
    required this.fontSizes,
    required this.style,
    this.textAlign = TextAlign.center,
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
        style: style?.copyWith(fontSize: _resolveFontSize(context.breakpoint)),
      );

  double _resolveFontSize(Breakpoint breakpoint) => switch (breakpoint) {
        Breakpoint.xxl => fontSizes[0],
        Breakpoint.xl => fontSizes[1],
        Breakpoint.l => fontSizes[2],
        Breakpoint.m => fontSizes[3],
        Breakpoint.s => fontSizes[4],
        Breakpoint.xs => fontSizes[5],
      };
}
