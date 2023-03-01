import 'package:flutter/material.dart';
import 'package:raumunikate/_assets.dart';

class SocialLinks extends StatelessWidget {
  const SocialLinks({super.key});

  @override
  Widget build(BuildContext context) => Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: const [
          _Svg(Assets.instagram),
          SizedBox(width: 6),
          _Svg(Assets.facebook),
          SizedBox(width: 4),
          _Svg(Assets.mail, height: 20),
        ],
      );
}

class _Svg extends StatelessWidget {
  const _Svg(this.asset, {this.height = 14});

  final String asset;
  final double height;

  @override
  Widget build(BuildContext context) =>
      const SizedBox(width: 20, height: 20, child: Placeholder());
// TODO(albert): mehh
// SvgPicture.asset(
//   asset,
//   height: height,
//   colorFilter: const ColorFilter.mode(
//     mainTODO_0,
//     BlendMode.srcIn,
//   ),
// );
}
