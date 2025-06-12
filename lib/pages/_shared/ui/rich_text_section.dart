import 'package:flutter/gestures.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/iterable_ext.dart';

class InlineText {
  const InlineText(this.text, {this.link});

  final String text;
  final String? link;
}

class RichTextSection extends StatelessWidget {
  const RichTextSection({required this.children});

  final List<InlineText> children;

  TextSpan _resolve(
    BuildContext context,
    InlineText inlineText,
    TextStyle? textStyle,
  ) {
    final link = inlineText.link;
    return link != null
        ? TextSpan(
            text: inlineText.text,
            style: textStyle?.copyWith(
              //decoration: TextDecoration.underline,
              color: linkColor,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () => context.launch(link),
          )
        : TextSpan(text: inlineText.text, style: textStyle);
  }

  @override
  Widget build(BuildContext context) {
    final textStyle = context.dts;
    return Text.rich(
      TextSpan(
        children: children
            .map((inlineText) => _resolve(context, inlineText, textStyle))
            .unmodifiable,
      ),
    );
  }
}
