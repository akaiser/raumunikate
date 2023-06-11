import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';

class SocialLinksRow extends Row {
  const SocialLinksRow({super.mainAxisAlignment = MainAxisAlignment.end})
      : super(
          children: const [
            _Link(
              Images.instagram,
              url: 'https://www.instagram.com/raumunikate/',
            ),
            SizedBox(width: 8),
            _Link(
              Images.facebook,
              url: 'https://de-de.facebook.com/ina.kaiser.7543/',
            ),
            SizedBox(width: 8),
            _Link(
              Images.mail,
              url: 'mailto:kontakt@raumunikate.com',
            ),
          ],
        );
}

class _Link extends StatelessWidget {
  const _Link(
    this.image, {
    required this.url,
  });

  final String image;
  final String url;

  @override
  Widget build(BuildContext context) => ClickableRegion(
        onTap: () => context.launch(url),
        child: Image.asset(
          image,
          height: 16,
          color: mainTODO_0,
        ),
      );
}
