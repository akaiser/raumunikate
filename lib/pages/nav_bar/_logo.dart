import 'package:flutter/widgets.dart';
import 'package:raumunikate/_assets.dart';

class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) => Image.asset(Assets.logo, height: 36);
}

class LogoText extends StatelessWidget {
  const LogoText({super.key});

  @override
  Widget build(BuildContext context) => Image.asset(
        Assets.logoText,
        height: 40,
      );
}
