import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class ContactColumn extends Column {
  const ContactColumn({
    super.crossAxisAlignment = CrossAxisAlignment.end,
    super.children = const [
      _Text('Ina Kaiser'),
      _Text('Straussstraße 27'),
      _Text('89518 Heidenheim, DE'),
      _Text('+49 152 54249392', 'tel:+4915254249392'),
      _Text('kontakt@raumunikate.com', 'mailto:kontakt@raumunikate.com'),
    ],
  });
}

class _Text extends StatelessWidget {
  const _Text(this.text, [this.url]);

  final String text;
  final String? url;

  @override
  Widget build(BuildContext context) {
    final child = Text(
      text,
      style: context.dts.copyWith(fontSize: 14),
    );
    final _url = url;
    return _url != null
        ? ClickableRegion(onTap: () => context.launch(_url), child: child)
        : child;
  }
}
