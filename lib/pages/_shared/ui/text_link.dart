import 'package:go_router/go_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class TextLink extends StatelessWidget {
  const TextLink(
    this.text, {
    required this.url,
    this.doPush = false,
    super.key,
  });

  final String text;
  final String url;
  final bool doPush;

  @override
  Widget build(BuildContext context) => ClickableRegion(
    onTap: () => doPush ? context.push(url) : context.launch(url),
    child: Text(
      text,
      style: context.dts.copyWith(
        //decoration: TextDecoration.underline,
        color: linkColor,
      ),
    ),
  );
}
