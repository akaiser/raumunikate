import 'package:flutter/widgets.dart';
import 'package:raumunikate/pages/_base_page.dart';
import 'package:raumunikate/pages/_shared/extensions/build_context_ext.dart';

class NotFoundPage extends StatelessWidget {
  const NotFoundPage();

  @override
  Widget build(BuildContext context) => BasePage(
        onScrollToTopTap: () {},
        onScrollUpRequest: () {},
        onScrollDownRequest: () {},
        child: Center(
          child: Text(
            '404 Nix hier!',
            style: context.tt.label?.copyWith(fontSize: 44),
          ),
        ),
      );
}
