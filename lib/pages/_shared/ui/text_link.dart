import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class TextLink extends StatelessWidget {
  const TextLink(
    this.text, {
    required this.url,
    super.key,
  });

  final String text;
  final String url;

  @override
  Widget build(BuildContext context) => ClickableRegion(
        onTap: () => context.launch(url),
        child: Text(
          text,
          style: context.dts.copyWith(
            //decoration: TextDecoration.underline,
            color: linkColor,
          ),
        ),
      );
}
