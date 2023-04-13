import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class ContactColumn extends StatelessWidget {
  const ContactColumn({
    this.crossAxisAlignment = CrossAxisAlignment.end,
    super.key,
  });

  final CrossAxisAlignment crossAxisAlignment;

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: crossAxisAlignment,
        children: const [
          _Text('Ina Kaiser'),
          _Text('Straussstraße 27'),
          _Text('89518 Heidenheim, DE'),
          _Text('+49 152 54249392'),
          _Text('kontakt@raumunikate.com'),
        ],
      );
}

class _Text extends StatelessWidget {
  const _Text(this.text);

  final String text;

  @override
  Widget build(BuildContext context) => Text(
        text,
        style: context.tt.body?.copyWith(
          fontSize: 14,
          color: mainTODO_0,
        ),
      );
}
