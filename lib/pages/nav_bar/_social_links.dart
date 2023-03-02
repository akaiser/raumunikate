import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';
import 'package:raumunikate/_settings.dart';
import 'package:raumunikate/pages/_shared/ui/hover_region.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          _Icon(Assets.instagram),
          SizedBox(width: 8),
          _Icon(Assets.facebook),
          SizedBox(width: 8),
          _Icon(Assets.mail),
        ],
      );
}

class _Icon extends StatelessWidget {
  const _Icon(this.asset);

  final String asset;

  @override
  Widget build(BuildContext context) => HoverRegion(
        builder: (context, isHovering, _) => Image.asset(
          asset,
          height: 16,
          color: isHovering ? mainTODO_0 : mainTODO_0.withOpacity(0.3),
        ),
      );
}
