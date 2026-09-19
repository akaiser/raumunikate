import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/components/social_links.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class const ConnectColumn({super.key}) extends Column {
  this
    : super(
        crossAxisAlignment: .start,
        children: const [
          _Text('Ist Ihr Interesse geweckt?'),
          _Text('Melden Sie sich gern bei mir und bleiben Sie ein Unikat,'),
          _Text('Ina Kaiser'),
          newLine,
          SocialLinksRow(mainAxisAlignment: .start),
        ],
      );
}

class const _Text(final String _text) extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Text(_text, style: context.dts.copyWith(fontSize: 16));
}
