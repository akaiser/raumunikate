import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/breakpoint.dart';

class const ResponsiveText(
  final String text, {
  // xxl | xl | l | m | s | xs
  required final List<double> _fontSizes,
  required final TextStyle? _style,
  final TextAlign _textAlign = .center,
  super.key,
}) extends StatelessWidget {
  this : assert(_fontSizes.length == 6, 'one needs to provide six font sizes');

  @override
  Widget build(BuildContext context) => Text(
    text,
    textAlign: _textAlign,
    style: _style?.copyWith(fontSize: _resolveFontSize(context.breakpoint)),
  );

  double _resolveFontSize(Breakpoint breakpoint) => switch (breakpoint) {
    .xxl => _fontSizes[0],
    .xl => _fontSizes[1],
    .l => _fontSizes[2],
    .m => _fontSizes[3],
    .s => _fontSizes[4],
    .xs => _fontSizes[5],
  };
}
