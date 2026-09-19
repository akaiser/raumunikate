import 'package:go_router/go_router.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class const TextLink(
  final String _text, {
  required final String url,
  final bool _doPush = false,
  super.key,
}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => ClickableRegion(
    onTap: () => _doPush ? context.push(url) : context.launch(url),
    child: Text(
      _text,
      style: context.dts.copyWith(
        //decoration: TextDecoration.underline,
        color: linkColor,
      ),
    ),
  );
}
