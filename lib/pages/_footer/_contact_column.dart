import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/extensions/nullable_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class const ContactColumn({super.key}) extends Column {
  this
    : super(
        crossAxisAlignment: .start,
        children: const [
          _Text('Ina Kaiser'),
          _Text('Straussstraße 27'),
          _Text('89518 Heidenheim, DE'),
          _Text('+49 152 54249392', 'tel:+4915254249392'),
          _Text('kontakt@raumunikate.com', 'mailto:kontakt@raumunikate.com'),
        ],
      );
}

class const _Text(final String _text, [final String? url])
    extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final child = Text(_text, style: context.dts.copyWith(fontSize: 14));
    return url.let(
          (url) =>
              ClickableRegion(onTap: () => context.launch(url), child: child),
        ) ??
        child;
  }
}
