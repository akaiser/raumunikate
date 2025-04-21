import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';

class Logo extends StatelessWidget {
  const Logo();

  @override
  Widget build(BuildContext context) => Image.asset(Images.logo, height: 36);
}

class LogoText extends StatelessWidget {
  const LogoText();

  @override
  Widget build(BuildContext context) =>
      Image.asset(Images.logoText, height: 40);
}
