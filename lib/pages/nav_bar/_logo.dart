import 'package:flutter/widgets.dart';
import 'package:raumunikate/_images.dart';

class const Logo({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Image.asset(Images.logo, height: 36);
}

class const LogoText({super.key}) extends StatelessWidget {
  @override
  Widget build(BuildContext context) =>
      Image.asset(Images.logoText, height: 40);
}
