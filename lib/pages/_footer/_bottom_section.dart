import 'package:flutter/widgets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_legal/imprint_page.dart';
import 'package:raumunikate/pages/_legal/privacy_page.dart';
import 'package:raumunikate/pages/_legal/terms_page.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/responsive/responsive_layout.dart';
import 'package:raumunikate/pages/_shared/ui/text_link.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) => DefaultTextStyle.merge(
        style: context.tt.body?.copyWith(
          color: mainTODO_0,
          fontSize: 13,
        ),
        child: ResponsiveLayout(
          s: (_) => Row(
            children: const [
              _Copyright(),
              SizedBox(width: 26),
              _Imprint(),
              SizedBox(width: 26),
              _Terms(),
              SizedBox(width: 26),
              _Privacy(),
            ],
          ),
          xs: (_) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _Copyright(),
              _Imprint(),
              _Terms(),
              _Privacy(),
            ],
          ),
        ),
      );
}

class _Copyright extends StatelessWidget {
  const _Copyright();

  @override
  Widget build(BuildContext context) =>
      const Text('© 2023 Raumunikate. All rights reserved.');
}

class _Imprint extends StatelessWidget {
  const _Imprint();

  @override
  Widget build(BuildContext context) => const TextLink(
        'Impressum',
        url: ImprintPage.path,
        fontSize: 12,
      );
}

class _Terms extends StatelessWidget {
  const _Terms();

  @override
  Widget build(BuildContext context) => const TextLink(
        'AGB',
        url: TermsPage.path,
        fontSize: 12,
      );
}

class _Privacy extends StatelessWidget {
  const _Privacy();

  @override
  Widget build(BuildContext context) => const TextLink(
        'Datenschutz',
        url: PrivacyPage.path,
        fontSize: 12,
      );
}
