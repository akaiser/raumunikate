import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class TextLink extends StatelessWidget {
  const TextLink(
    this.text, {
    required this.url,
    this.fontSize,
    super.key,
  });

  final String text;
  final String url;
  final double? fontSize;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => context.launch(url),
        child: ClickableRegion(
          child: Text(
            text,
            style: context.tt.body?.copyWith(
              //decoration: TextDecoration.underline,
              color: linkColor,
              fontSize: fontSize,
            ),
          ),
        ),
      );
}
