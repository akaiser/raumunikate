import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:raumunikate/_settings.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SvgPicture.asset(
            'assets/instagram.svg',
            height: 14,
            colorFilter: const ColorFilter.mode(
              mainTODO_0,
              BlendMode.srcIn,
            ),
          ),
          const SizedBox(width: 4),
          const Icon(Icons.facebook, size: 18, color: mainTODO_0),
          const SizedBox(width: 4),
          const Icon(Icons.mail_outline, size: 18, color: mainTODO_0),
        ],
      );
}
