import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/social_links.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class ConnectColumn extends StatelessWidget {
  const ConnectColumn({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          _Text('Ist Ihr Interesse geweckt?'),
          _Text('Melden Sie sich gern bei mir und bleiben Sie ein Unikat,'),
          _Text('Ina Kaiser'),
          newLine,
          SocialLinks(mainAxisAlignment: MainAxisAlignment.start),
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
          fontSize: 16,
          color: mainTODO_0,
        ),
      );
}
