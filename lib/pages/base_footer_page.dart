import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/base_page.dart';
import 'package:raumunikate/pages/footer/footer.dart';

class BaseFooterPage extends StatelessWidget {
  const BaseFooterPage({
    required this.children,
    super.key,
  });

  final List<Widget> children;

  @override
  Widget build(BuildContext context) => BasePage(
        children: [
          ...children,
          const Footer(),
        ],
      );
}
