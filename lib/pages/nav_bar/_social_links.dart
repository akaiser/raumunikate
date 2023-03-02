import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          _Icon(Assets.instagram),
          SizedBox(width: 6),
          _Icon(Assets.facebook),
        ],
      );
}

class _Icon extends StatelessWidget {
  const _Icon(this.asset);

  final String asset;

  @override
  Widget build(BuildContext context) => Image.asset(asset, height: 16);
}
