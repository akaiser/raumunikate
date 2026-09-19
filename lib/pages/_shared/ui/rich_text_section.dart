import 'package:flutter/gestures.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';

class const InlineText(final String _text, {final String? _link});

class const RichTextSection({
  required final List<InlineText> _children,
  super.key,
}) extends StatelessWidget {
  TextSpan _resolve(
    BuildContext context,
    InlineText inlineText,
    TextStyle? textStyle,
  ) {
    final link = inlineText._link;
    return link != null
        ? TextSpan(
            text: inlineText._text,
            style: textStyle?.copyWith(
              //decoration: TextDecoration.underline,
              color: linkColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.launch(link),
          )
        : TextSpan(text: inlineText._text, style: textStyle);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.dts;
    return Text.rich(
      TextSpan(
        children: _children
            .map((inlineText) => _resolve(context, inlineText, textStyle))
            .unmodifiable,
      ),
    );
  }
}
