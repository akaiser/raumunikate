import 'package:flutter/material.dart';
import 'package:raumunikate/_images.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/clickable_region.dart';
import 'package:url_launcher/url_launcher.dart' as launcher;

class SocialLinks extends StatelessWidget {
  const SocialLinks({
    this.mainAxisAlignment = MainAxisAlignment.end,
    super.key,
  });

  final MainAxisAlignment mainAxisAlignment;

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: mainAxisAlignment,
        children: const [
          _Link(
            Images.instagram,
            urlToLaunch: 'https://www.instagram.com/raumunikate/',
          ),
          SizedBox(width: 8),
          _Link(
            Images.facebook,
            urlToLaunch: 'https://de-de.facebook.com/ina.kaiser.7543/',
          ),
          SizedBox(width: 8),
          _Link(
            Images.mail,
            urlToLaunch: 'mailto:kontakt@raumunikate.com',
          ),
        ],
      );
}

class _Link extends StatelessWidget {
  const _Link(
    this.image, {
    required this.urlToLaunch,
  });

  final String image;
  final String urlToLaunch;

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () => launcher.launchUrl(Uri.parse(urlToLaunch)),
        child: ClickableRegion(
          child: Image.asset(
            image,
            height: 16,
            color: mainTODO_0,
          ),
        ),
      );
}
